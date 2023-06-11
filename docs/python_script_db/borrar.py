import mysql.connector

def reiniciar_tabla(nombre_tabla):
    # Configura la conexión a la base de datos
    cnx = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="teporingoDB"
    )
    cursor = cnx.cursor()

    # Elimina los registros de la tabla
    query = f"DELETE FROM {nombre_tabla}"
    cursor.execute(query)

    # Reinicia el contador de identificación automática
    query = f"ALTER TABLE {nombre_tabla} AUTO_INCREMENT = 1"
    cursor.execute(query)

    # Confirma los cambios y cierra la conexión
    cnx.commit()
    cursor.close()
    cnx.close()

# Reiniciar tabla "usuario"
reiniciar_tabla("usuario")

# Reiniciar tabla "casa"
reiniciar_tabla("casa")

# Reiniciar tabla "puntos"
reiniciar_tabla("puntos")