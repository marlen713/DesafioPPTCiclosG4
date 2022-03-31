# Crear un programa que nos permita jugar "Piedra, papel o tijera".
# ● Primero debes realizar y validar un diagrama de flujo que cumpla con los
# requerimientos.
# ● Luego debes programar la solución utilizando Ruby y tu editor de texto favorito.

# Imprimir en pantalla un menú que permita, al jugador número uno, elegir una opción:
# Turno jugador uno:
# ○ Piedra
# ○ Papel
# ○ Tijeras
# ○ Salir
# ● El programa debe solicitar al jugador número uno el ingreso de una opción.
# ● Si el jugador número uno ingresa una opción que no pertenece al menú, se debe
# mostrar en pantalla que la opción no es válida y volver a solicitar -al jugador número
# uno- el ingreso de una opción.
# ● Si el jugador número uno la opción ingresada es válida, y no se ingresó la opción de
# salir (4), se debe desplegar un menú que permita, al jugador número dos, elegir una
# opción:
# Turno jugador dos:
# ○ Piedra
# ○ Papel
# ○ Tijeras
# ○ Salir

# ● Si el jugador número dos ingresa una opción que no es válida, se debe mostrar en
# pantalla que la opción no es válida y volver a solicitar -al jugador número dos- el
# ingreso de una opción.
# ● Si cualquiera de los dos jugadores selecciona la opción número 4, el programa debe
# terminar.
# ● Si ambas opciones seleccionadas son válidas, y no son la opción de salir, el
# programa debe elegir un ganador o un empate de acuerdo al siguiente criterio:
# ○ Piedra gana a tijera.
# ○ Papel gana a piedra.
# ○ Tijera gana a papel.
# ● El programa, luego de evaluar las selecciones de ambos jugadores, debe imprimir el
# jugador ganador y luego terminar.
# ● Si ambos jugadores seleccionaron la misma opción, el programa debe imprimir que
# el resultado es un empate y luego terminar

winner = false
while winner == false
# imprimir menu en pantalla
puts "BIENVENIDO(A)"
puts "Elige una opción:"
puts "1. Piedra"
puts "2. Papel"
puts "3. Tijera"
puts "4. Salir"

# Jugador uno elige una opción
puts "Jugador uno ingresa una opción"
player_one = gets.chomp.to_i
while player_one != 1 && player_one !=2 && player_one !=3 && player_one !=4
  puts "Opción inválida, favor elija una opción de la lista"
  puts "1. Piedra"
  puts "2. Papel"
  puts "3. Tijera"
  puts "4. Salir"
  player_one = gets.chomp.to_i
end
  if player_one == 4
    puts "Jugador uno sale del juego"
    winner = true
  else
    # Jugador dos elige una opción
    puts "Jugador dos ingresa una opción"
    player_two = gets.chomp.to_i
    while player_two != 1 && player_two !=2 && player_two !=3 && player_two !=4
      puts "Opción inválida, favor elija una opción de la lista"
      puts "1. Piedra"
      puts "2. Papel"
      puts "3. Tijera"
      puts "4. Salir"
      player_two = gets.chomp.to_i
    end
  end

  if player_one == 1
    if player_two == 1
      puts "********************************************************"
      puts "Ambos juegan Piedra, esto es un empate...a jugar de nuevo" 
      puts "********************************************************"
    elsif player_two == 2
      puts "Papel gana a piedra, gana jugador dos"
      winner = true 
    elsif player_two == 3
      puts "Piedra gana a tijera, gana jugador uno"
      winner = true
    else
      puts "Jugador dos sale del juego"
      winner = true
    end
  elsif player_one == 2
    if player_two == 1
      puts "Papel gana a piedra, gana jugador uno"
      winner = true 
    elsif player_two == 2
      puts "********************************************************"
      puts "Ambos jugadores juegan Papel, esto es un empate...a jugar de nuevo"
      puts "********************************************************"
    elsif player_two == 3
      puts "Tijera gana a papel, gana jugador dos"
      winner = true
    else
      puts "Jugador dos sale del juego"
      winner = true 
    end 
  elsif player_one == 3 
    if player_two == 1
      puts "Piedra gana a tijera, gana jugador dos"
      winner = true
      elsif player_two == 2
        puts "Tijera gana a papel, gana jugador uno"
        winner = true 
      elsif player_two == 3
        puts "********************************************************"
        puts "Ambos jugadores juegan Tijera, esto es un empate...a jugar de nuevo"
        puts "********************************************************"
      else
        puts "Jugador dos sale del juego"
        winner = true
      end
    end 
  end