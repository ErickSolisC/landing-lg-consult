# Respuesta retornada por el script
# Promedio de precios: 1024.12
# Producto con mayor stock: Producto_823 (500 unidades)
# Total de productos: 1000

# En el archivo produtos.log se registran los eventos del procesamiento
# Comando para ejecutar el script: python3 scripts/python/validation_file.py

import pandas as pd
import logging

# Configuracion de logging
logging.basicConfig(
    filename='scripts/python/productos.log',
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

archivo = 'scripts/python/productos_1000.csv'

try:
    # lectura de archivo con pandas
    df = pd.read_csv(archivo)

    # Validar las columnas requeridas
    required_cols = ['nombre', 'precio', 'stock']
    if not all(col in df.columns for col in required_cols):
        raise ValueError(f"El CSV debe contener las columnas: {required_cols}")

    # Convertir tipos
    df['precio'] = pd.to_numeric(df['precio'], errors='coerce')
    df['stock'] = pd.to_numeric(df['stock'], errors='coerce')

    # Eliminar filas no válidas
    df = df.dropna(subset=['nombre', 'precio', 'stock'])

    # variables de calculo
    promedio_precio = df['precio'].mean()
    producto_max_stock = df.loc[df['stock'].idxmax()]
    total_productos = len(df)
    
    print(f"Promedio de precios: {promedio_precio:.2f}")
    print(f"Producto con mayor stock: {producto_max_stock['nombre']} ({producto_max_stock['stock']} unidades)")
    print(f"Total de productos: {total_productos}")

    logging.info("Procesamiento completado exitosamente.")

except FileNotFoundError:
    logging.error(f"El archivo {archivo} no existe.")
    print(f"Error: el archivo {archivo} no fue encontrado.")

except Exception as e:
    logging.exception("Ocurrió un error al procesar el CSV.")
    print(f"Error: {e}")

