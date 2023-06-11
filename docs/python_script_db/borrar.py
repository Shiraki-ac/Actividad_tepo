import mysql.connector

def reiniciar_tabla(nombre_tabla):
    cnx = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="teporingoDB"
    )
    cursor = cnx.cursor()

    query = f"DELETE FROM {nombre_tabla}"
    cursor.execute(query)

    query = f"ALTER TABLE {nombre_tabla} AUTO_INCREMENT = 1"
    cursor.execute(query)

    cnx.commit()
    cursor.close()
    cnx.close()

reiniciar_tabla("usuario")
reiniciar_tabla("casa")
reiniciar_tabla("puntos")