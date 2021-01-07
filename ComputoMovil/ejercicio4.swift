/*
Dada una lista de recetas encontrar las recetas que contengan alguno o algunos ingredientes
ejemplo de captura 
ingredientes > huevos
ingredientes > res, huevos, sal 
ingredientes >  harina sal, leche
Solo se muestran las recetas que contengan los ingredientes */
import Foundation

func readIngredients(){
//Ingredientes del usuario
    print("Ingresa los ingredientes que quieres buscar en las recetas separados por comas\n")
    print("Ejemplo: huevos" )
    print("Ejemplo: leche,sal")
    print("Ejemplo: harina,pan,nuez")
   
    let userInput = readLine()!
    let ingredients = userInput.lowercased().split(separator: ",").map(String.init)
    //print(ingredients)
    findIngredients(ingredients: ingredients)
}
func findIngredients(ingredients: [String]){
    //Dicionario de recetas con 10 recetas
    let recipes: [String: String] = ["Pollo al Horno con Patatas": "Ingredientes: 1 pollo entero o 4 muslos completos (cuartos traseros) 4 patatas medianas 4 cebollas medianas aceite de oliva sal y pimienta Tomillo seco Procedimiento:1.- Comenzamos pelando las patatas. Una vez peladas, las cortamos en rodajas finas, de no más de 1 centímetro de grosor. Después, las ponemos como base en una bandeja para horno. Pelamos también las cebollas y las cortamos en tiras finas. La ponemos sobre la patata y salpimentamos todo. 2.- A continuación ponemos los muslos encima de las patatas y la cebolla. Le aniadimos a todo un vaso de agua y un chorrete de aceite de oliva. Así quedará mas jugoso mientras se hornea. Nos aseguramos que en el fondo de la fuente, haya siempre humedad. Así la guarnición no se va a quemar. Salpimentamos y aniadimos un buen pellizco de tomillo seco a cada muslo (o al pollo completo, si has elegido la pieza completa) 3.- Metemos el pollo al horno a 220ºC si utilizas muslos. calor arriba y abajo. Dejamos hornear unos 30 minutos, hasta que se dore bien. Si utilizas un pollo entero, horneamos a 190ºC. 4.- Cuando esté bien dorado, sacamos la bandeja del horno, le damos la vuelta a las piezas. Así, se cocinará el otro lado. 5.- Inmediatamente después, volvemos a meter la bandeja dentro del horno. Finalmente dejamos cocinar aproximadamente el mismo tiempo, hasta que todo quede bien cocinado.",
    "Pechuga de pollo con shiitake, pistachos y cerveza":"Ingredientes para dos personas 500 g de pechuga de pollo 150 g de setas shiitakes 20 g de pistachos 70 ml de salsa de soja 300 ml de cerveza 4 cucharadas soperas de aceite de girasol sal y pimienta Comenzaremos cortando la pechuga de pollo en dados para un bol, le aniadimos las setas limpias, la pimienta y la salsa de soja y dejamos macerar una hora, revolviendo la preparación de vez en cuando. Ponemos a calentar una cazuela de fondo grueso con el aceite de girasol y sofreímos la carne y las setas algo escurridas de la marinada hasta que veamos que la carne ya no está sonrosada. Agregamos los pistachos, dejamos que se hagan un minuto o dos y aniadimos la cerveza permitiendo que se reduzca el líquido durante 15 minutos. Rectificamos de sal. Se puede acompaniar con un poco de arroz basmati",
    "Ensalada de lentejas":"Ingredientes para hacer Ensalada de Lentejas (para 4 personas): 1 tarro grande de lentejas cocidas (unos 400 gramos ya escurridas) 1 queso fresco mediano 1 tomate grande 1 zanahoria grande 1 cebolla pequenia 1 puniado de aceitunas con anchoas (unas 15 o 20 aceitunas) 3 cucharadas de maíz de lata 1 pizca de orégano aceite de oliva vinagre sal fina Receta para hacer Ensalada de Lentejas (para cuatro personas): Abre el tarro de lentejas y ponlas en un colador. Mete el colador bajo el chorro de agua del grifo y enjuaga bien las lentejas. Luego deja que escurran bien toda el agua. Pela la zanahoria y córtala en taquitos muy pequenios (ver como corta la zanahoria a taquitos). Pela la cebolla y pícala muy fina. Lava el tomate y córtalo en trocitos pequenios (fíjate en la fotografía). Corta en rodajas las aceitunas. Pon en una fuente las lentejas bien escurridas y aniade la cebolla, la zanahoria, el tomate y las aceitunas. Pero no lo aniadas todo, deja un poco para decorar luego. Aniade también a las lentejas un chorrito de aceite de oliva, un chorrito de vinagre, una pizca de sal y otra de orégano. Mezcla bien y prueba. Si hace falta aniade más sal, más aceite o más vinagre, a tu gusto. Si vas a servir en platos individuales reparte las lentejas en el centro de los platos. Luego corta el queso fresco en cuadraditos y rodea las lentejas en cada plato. Por último aniade por encima la zanahoria, cebolla, tomate y aceitunas que habíamos reservado. Si quieres dele un último toque con aceite y orégano y listo. Fuera de la cocina y a comer!!!! http://www.javirecetas.com/ensalada-de-lentejas/",
    "Ensalada de garbanzos y atún con vinagreta de mostaza": "Ingredientes para cuatro raciones Para la ensalada: 175 g de garbanzos secos o 400 g en conserva y escurridos, 2 tomates de ensalada o 12 tomates cherry variados, 1/2 cebolleta pequenia, 200 g de atún en conserva, 100 g de mezclum de lechugas. Para el alinio: 1 cucharada sopera de mostaza, 4 cucharadas soperas de aceite de oliva, 2 cucharadas soperas de vinagre blanco, sal. Cómo hacer ensalada de garbanzos con atún y vinagreta de mostaza El día anterior por la maniana poner a remojo los garbanzos. Por la noche o cuando hayan pasado ocho o diez horas cocerlos durante cuarenta minutos. Escurrirlos y dejarlos enfriar en una fuente en la nevera. Poner en un plato grande una cama de mezclum de lechugas, aniadir los garbanzos, desmenuzar el atún en trozos medianos y los tomates picados en trozos o bien mitades de los tomates cherry. Esparcir los aros de cebolleta. En un bol mezclar la mostaza, el vinagre, el aceite de oliva y la sal. Remover con una cuchara hasta que se amalgamen los ingredientes y se forme una vinagreta espesa. Extenderla por encima de la ensalada justo en el momento de servir.",
    "Macarrones con salchichas, champiniones y ajos tiernos": "Ingredientes Para 4 personas 350 g de macarrones o cualquier otra pasta corta 300 g de champiniones frescos 300 g de salchichas o butifarra frescas 100 g de ajos tiernos (en su defecto, un diente de ajo). 8 cucharadas de leche evaporada 1 cucharadita de mostaza 100 ml de vermut blanco 1 limón Queso parmesano rallado Aceite de oliva Sal y pimienta negra Preparación 1. Poner a calentar agua abundante con sal en una cazuela grande. 2. Eliminar la capa exterior de los ajos y picarlos en rodajas finas. Lavar los champiniones y cortarlos en láminas no demasiado finas. 3. Sacar la carne del interior de las salchichas y saltearla en una sartén grande con un poco de aceite a fuego vivo, desmigandola con una cuchara de madera. Sacarla a un plato. 4. En la misma sarten, saltear los champiniones unos 5 minutos, removiendo de vez en cuando. Aniadir los ajos y rehogar un par de minutos mas. Mojar con el vermut, dejar que evapore el alcohol un par de minutos. 5. Aniadir la mostaza y remover fuera del fuego. Sumar la leche evaporada y la carne de salchicha, salpimentar, mezclar y reservar. 6. Cuando el agua hierva, cocer la pasta según las instrucciones del fabricante. Escurrirla reservando unas 4 cucharadas del agua de coccion. Mezclar la pasta con este agua, la salsa y zumo de limon al gusto. Servir de inmediato con parmesano rallado por encima",
    "Lasania con champiniones": "1/2 kilo champiniones (hongos); 1 limón; 1 cucharada de mantequilla; 2 cucharadas de aceite; 1 cebolla mediana picadita, alrededor de3/4 de taza; 1 diente de ajo, machacado; 1/3 de taza de la parte blanca de un ajo porro, picadita; 1/2 taza de vino blanco seco; 1/8 de cucharadita de pimienta blanca molida; 1/4 de cucharadita de salsa inglesa Worcestershire; 2 cucharaditas de sal; 350 gramos de queso de mano o de mozzarella o queso blanco blando 350 gramos de queso criollo blanco semi-duro, ambos en tajadas delgadas; 1 taza de queso parmesano ral lado, (100 gramos. ) para la lasania 250 gramos de pasta para lasania; 3 litros de agua, 2 cucharaditas de sal 1 cucharada de aceite para cocinarla; 1 cucharada se mantequilla para engrasar un molde de vidrio para hornear de unos 25 x 15 x 5centímetros; 1/2 taza de queso parmesano rallado; 1 cucharada de mantequilla para poner encima. para la salsa bechamel 2 cucharadas de mantequilla; 2 cucharadas de harina; 2 tazas de leche hirviendo; 1/8 de cucharaditas de sal; 1/8 de cucharadita de pimienta blanca molida; 1/16 de cucharadita de nuez moscada rallada, para el relleno 1. se elimina el extremo inferior del tallo de los hongos, se limpian o se enjuagan ligeramente con agua. se cortan verticalmente en tajaditas delgadas. los tallos que se desprenden se cortan en rueditas delgadas. todo se pone aparte. 2. en una olla o sartén grande se ponen la mantequilla, el aceite, la cebolla, el ajo y el ajo porro y se fríe hasta marchitar, unos 5 minutos. se agregan los hongos, el vino, la pimienta, la salsa inglesa y la sal. se lleva a un hervor y se cocina hasta que casi se evapore el agua que producen los hongos, unos 12 a 15 minutos. debe quedar bastante seco para el relleno de la lasania. para la salsa bechamel 1. en una olla se pone la mantequilla a calentar. 2. se agrega la harina revolviendo y a fuego suave se cocina hasta formar burbujitas, unos 3 a 4 minutos. 3. se aniade poco a poco y revolviendo la leche hirviendo, la sal, la pimienta y la nuez moscada, si se quiere, en pequenísima cantidad y revolviendo constantemente se cocina a fuego suave unos 5 a 7 minutos hasta espesar y formar una crema. Instrucciones de elaboración: 1. se precalienta el horno a 350 grados. 2. en una olla se ponen los 3 litros de agua, la cucharada de sal y la cucharada de aceite. se lleva a un hervor. se agrega la pasta y se cocina hasta estar al dente de acuerdo a las instrucciones del fabricante. en general unos 25 minutos. se cuela, se enjuaga ligeramente. se escurre. 3. con la cucharada de mantequilla se engrasa un envase de vidrio para hornear de unos 25 x 15 x 5 centímetros. se cubre el fondo del molde con una ligera capa de crema bechamel y luego con una capa de la pasta. se continúa con una capa de hongos, una de cada queso y algunos puntos de salsa bechamel. se continúa hasta terminar con una capa de pasta que se cubre con una ligera capa de salsa bechamel, queso parmesano rallado y unos puntos de mantequilla. 4. colocar el envase en el horno y hornear unos 30 minutos hasta dorar.",
    "Ensalada de jamón serrano, uvas y avellanas": "Ingredientes para 4 personas: 1/2 escarola 100 gr. de avellanas peladas. 150gr de jamón serrano en lonchas finas. 8 uvas. 4 cucharadas de aceite de oliva. 2 cucharadas de vinagre de Jerez. 1 cucharadita de azúcar. 1 cucharadita de pimentón dulce. sal. Pon una cucharada de aceite en una sartén antiadherente y dora las avellanas, sin que se quemen. Aniádeles el pimentón y mezcla bien. Escurre y reserva. Corta las uvas por la mitad, quítales las pepitas y corta cada mitad por la mitad. Calienta una cucharada de aceite en la sartén y rehoga las uvas durante 1 minuto. Escúrrelas y espolvoréalas con azúcar y sal. Resérvalas. Lava la escarola y trocéala. Extiéndela sobre una fuente y bania con la vinagreta del vinagre, el aceite restante y la sal. Esparce las uvas y las avellanas. Rodea los bordes con las lonchas de jamón y sirve.",
    "Bonito escabechado a la riojana": "Los ingredientes 1 kilo de bonito, 2 hojas de laurel, 10 granos de pimienta verde, 2 dientes de ajo, 1 vaso de vinagre, 1 vaso de agua, aceite, 1 pimiento rojo, 1 pimiento verde, 1 cebolla, sal. Cómo preparar bonito escabechado a la riojana Limpiamos el bonito y lo secamos un poco. Ponemos el bonito en un bol y aniadimos las hojas de laurel troceadas, la pimienta, la sal, los ajos pelados troceados, el vinagre y el agua. Dejaremos macerar durante 24 horas como mínimo. Limpiamos los pimientos, les quitamos las semillas y cortamos a trozos. Pelamos la cebolla y la partimos también. Sofreímos con aceite la cebolla y los pimientos hasta que estén tiernos, dorados, aunque todavía enteros. Escurrimos el bonito del escabeche, lo partimos en trocitos no muy pequenios y lo aniadimos a la sartén de los pimientos. Rehogamos todo junto durante unos 10 minutos.",
    "Fajitas": "Ingredientes: 8 tortillas de trigo Salsa Sazonador para faijtas 500g de pollo 2 pimientos 1 cebolla Corta los pimientos y la cebolla, los echas a la sartén y los sofríes con un poco de aceite. Ahora le toca al pollo: lo cortas en tiras y lo aniades a la sartén. Cocínalo a fuego medio unos 4 minutos. Aniade el sazonador para fajitas y continúa cociendo la mezcla durante unos 3 minutos más, a fuego medio sin tapar y removiendo. ¡Qué bien huele! Precaliente el horno. Saca las tortillas del envase y caliéntalas 10 minutos a 180ºC"]
    
    var recipesWithIngredients = [String]()
    //var opcion = 0
    for ingredient in ingredients{
        for (nombre,recip) in recipes{
            if recip.contains(ingredient){
                recipesWithIngredients.append(nombre) }
        }
    }
    if recipesWithIngredients.isEmpty{
        print("No hay coincidencias")
    }
    else{
    print("Los ingredientes ingresados se encuentran las siguientes recetas (\(recipesWithIngredients.count)):\n")
    for recip in recipesWithIngredients{
        print(recip)
        print("Quieres ver la receta completa 1-Si, 2-No")
        let aux = readLine()!
        let opcion = UInt8(aux)
        if opcion == 1 {
        print(recipes[String(recip)]!) 
        print("\n")
        }
        else if opcion == 2{
        print("Mostrando siguiente receta...")
        } 
        
    }
    }


}

readIngredients()