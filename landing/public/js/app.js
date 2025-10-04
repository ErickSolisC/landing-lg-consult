document.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("registroForm");
  const inputs = form.querySelectorAll("input");
  const submitBtn = form.querySelector("button[type='submit']");

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  const passRegex = /^(?=.*[A-Z].*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/;

  const validateField = (input) => {
    let valid = true;
    let message = "";

    if (input.name === "nombre") {
      if (input.value.trim().length < 3) {
        valid = false;
        message = "El nombre debe tener al menos 3 caracteres";
      }
    } else if (input.name === "correo") {
      if (!emailRegex.test(input.value)) {
        valid = false;
        message = "Correo inválido";
      }
    } else if (input.name === "password") {
      if (!passRegex.test(input.value)) {
        valid = false;
        message =
          "La contraseña debe tener 8 caracteres, 2 mayúsculas, 1 número y 1 signo especial";
      }
    } else if (input.name === "fecha_nacimiento") {
      if (!input.value) {
        valid = false;
        message = "Debes seleccionar una fecha";
      } else {
        const edad =
          new Date().getFullYear() - new Date(input.value).getFullYear();
        if (edad < 18) {
          valid = false;
          message = "Debes ser mayor de 17 años";
        }
      }
    }

    return { valid, message };
  };

  const updateButtonState = () => {
    submitBtn.disabled = !Array.from(inputs).every(
      (input) => validateField(input).valid
    );
  };

  updateButtonState();

  inputs.forEach((input) => {
    const errorEl = input.nextElementSibling;

    input.addEventListener("input", () => {
      const { message } = validateField(input);
      if (document.activeElement === input) {
        errorEl.textContent = message;
      } else {
        errorEl.textContent = "";
      }
      updateButtonState();
    });

    input.addEventListener("focus", () => {
      const { message } = validateField(input);
      errorEl.textContent = message;
    });

    input.addEventListener("blur", () => {
      const { valid } = validateField(input);
      if (valid) errorEl.textContent = "";
    });
  });

  form.addEventListener("submit", async (e) => {
    e.preventDefault();
    const data = Object.fromEntries(new FormData(form));

    const resp = await fetch(
      "/landing-lg-consult/landing/public/api/registro.php",
      {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      }
    );

    try {
      const result = await resp.json();
      if (result.errors) {
        Object.entries(result.errors).forEach(([field, msg]) => {
          const input = form.querySelector(`[name=${field}]`);
          input.nextElementSibling.textContent = msg;
        });
      }
      alert(result.message);
      if (result.success) {
        form.reset();
        updateButtonState();
      }
    } catch (e) {
      alert("Error al registrar usuario.");
      console.error(e);
    }
  });
});
