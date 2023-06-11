import mysql.connector
import random

def generar_registros():
    # Configura la conexión a la base de datos
    conexion = mysql.connector.connect(
        host="localhost",
        user="root",
        password="",
        database="teporingoDB"
    )
    cursor = conexion.cursor()

    # Lista de nombres de usuarios
    nombres = [
        "Juan", "María", "Luis", "Ana", "Carlos", "Laura", "Pedro", "Sofía", "Diego", "Valeria",
        "Adrien", "Alexandre", "Antoine", "Arthur", "Auguste", "Axel", "Baptiste", "Benjamin", "Benoît", "Cédric",
        "Célestin", "César", "Charles", "Clément", "Damien", "David", "Denis", "Edouard", "Eliott", "Emile",
        "Emmanuel", "Enzo", "Etienne", "Evan", "Fabien", "Florent", "Florian", "Gabriel", "Gaspard", "Gautier",
        "Geoffrey", "Germain", "Gérard", "Gilles", "Grégoire", "Guillaume", "Hugo", "Jacques", "Jean", "Jonathan",
        "Julien", "Laurent", "Léo", "Loïc", "Lucas", "Ludovic", "Marc", "Mathieu", "Matthieu", "Maxime",
        "Michaël", "Mickaël", "Nicolas", "Noël", "Olivier", "Pascal", "Patrick", "Paul", "Philippe", "Pierre",
        "Quentin", "Raphaël", "Rémi", "René", "Sébastien", "Simon", "Stéphane", "Théo", "Théodore", "Thibault",
        "Thibaut", "Thierry", "Thomas", "Timothée", "Tristan", "Valentin", "Vincent", "Xavier", "Yann", "Yannick",
        "Yves", "Zacharie", "Alexandra", "Alice", "Anaïs", "Angélique", "Anne", "Audrey", "Aurore", "Camille",
        "Caroline", "Catherine", "Cécile", "Chloé", "Christelle", "Christine", "Clara", "Claire", "Corinne", "Delphine",
        "Eléonore", "Elise", "Eloïse", "Emilie", "Emma", "Estelle", "Eva", "Fabienne", "Fanny", "Florence",
        "Floriane", "Frédérique", "Isabelle", "Jennifer", "Jessica", "Julie", "Justine", "Laëtitia", "Laura", "Laure",
        "Laurie", "Léa", "Léna", "Linda", "Lisa", "Lola", "Louise", "Lucie", "Magali", "Manon",
        "Marie", "Marine", "Marion", "Mathilde", "Mélanie", "Morgane", "Nadia", "Nathalie", "Noémie", "Olivia"
    ]

    # Lista de nombres de casas
    casas = ["Ajolotes", "Teporingos", "Halcones"]

    # Obtener la longitud máxima de la columna usuario_email
    query = "SELECT CHARACTER_MAXIMUM_LENGTH FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'teporingoDB' AND TABLE_NAME = 'usuario' AND COLUMN_NAME = 'usuario_email'"
    cursor.execute(query)
    resultado = cursor.fetchone()
    longitud_maxima = resultado[0]

    # Genera 50 registros de usuarios
    for i in range(50):
        nombre = random.choice(nombres)
        apellido = f"Apellido{i}"
        email = f"{nombre.lower()}.{apellido.lower()}@gmail.com"
        psw = "password"

        if len(email) > longitud_maxima:
            print(f"El correo electrónico excede la longitud máxima permitida ({longitud_maxima} caracteres).")
            continue

        # Inserta el usuario en la tabla "usuario"
        query = "INSERT INTO usuario (usuario_name, usuario_apellido, usuario_email, usuario_psw) VALUES (%s, %s, %s, %s)"
        values = (nombre, apellido, email, psw)
        cursor.execute(query, values)
        id_usuario = cursor.lastrowid

        # Asigna una casa en función del índice
        casa = casas[i % len(casas)]

        # Inserta la casa en la tabla "casa"
        query = "INSERT INTO casa (id_usuario, casa_name) VALUES (%s, %s)"
        values = (id_usuario, casa)
        cursor.execute(query, values)

        # Asigna puntos en función del índice
        puntos = (i + 1) * 10

        # Inserta los puntos en la tabla "puntos"
        query = "INSERT INTO puntos (id_usuario, puntos) VALUES (%s, %s)"
        values = (id_usuario, puntos)
        cursor.execute(query, values)

    # Confirma los cambios y cierra la conexión
    conexion.commit()
    cursor.close()
    conexion.close()

    print("Registros generados exitosamente.")


def mostrar_menu():
    while True:
        print("---------- MENÚ ----------")
        print("1. Generar registros")
        print("2. Salir")
        opcion = input("Selecciona una opción: ")

        if opcion == "1":
            generar_registros()
        elif opcion == "2":
            print("¡Hasta luego!")
            break
        else:
            print("Opción inválida. Por favor, selecciona una opción válida.")

mostrar_menu()
