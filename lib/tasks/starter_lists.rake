namespace :lists do
  desc "Add a couple of starter lists"
  task :create_lists => :environment do

    [Word, List].each(&:delete_all)

    list = List.create(
      :name => "Common adjectives"
    )
    words_for_list = {
      "amplio" => "spacious",
      "aburrido" => "boring",
      "agradable" => "agreeable",
      "alegre" => "happy",
      "alto" => "tall, high",
      "amable" => "friendly",
      "antiguo" => "old",
      "atlético" => "athletic",
      "atrevido" => "bold",
      "bajo" => "short",
      "bueno" => "good",
      "caliente" => "hot",
      "cansado" => "tired",
      "caprichoso" => "quirky",
      "claro" => "clear",
      "cómodo" => "comfortable",
      "contento" => "content",
      "corto" => "short",
      "débil" => "weak",
      "decente" => "decent",
      "delgado" => "thin",
      "delicioso" => "delicious",
      "difícil" => "difficult",
      "divertido" => "entertaining",
      "dulce" => "sweet",
      "duro" => "hard, difficult",
      "elegante" => "elegant",
      "emocionante" => "exciting",
      "enérgico" => "energetic",
      "enfermo" => "sick",
      "enorme" => "enormous",
      "espantoso" => "scary",
      "especial" => "special",
      "falso" => "false",
      "famoso" => "famous",
      "favorito" => "favorite",
      "feo" => "ugly",
      "frío" => "cold",
      "fuerte" => "strong",
      "general" => "general",
      "generoso" => "generous",
      "gordo" => "fat",
      "gran" => "grand",
      "grande" => "big",
      "gratis" => "free",
      "guapo" => "handsome",
      "hambriento" => "hungry",
      "hermoso" => "beautiful, gorgeous",
      "importante" => "important",
      "incómodo" => "uncomfortable",
      "inconveniente" => "inconvenient",
      "incorrecto" => "incorrect",
      "infantil" => "childish",
      "joven" => "young",
      "inteligente" => "intelligent",
      "largo" => "long",
      "lento" => "slow",
      "libre" => "free",
      "limpio" => "clean",
      "listo" => "smart, ready",
      "loco" => "crazy",
      "lluvioso" => "rainy",
      "malo" => "bad",
      "mismo" => "same",
      "mojado" => "wet",
      "moreno" => "dark-haired",
      "nuevo" => "new",
      "ocupado" => "busy",
      "pasado" => "passed",
      "peligroso" => "dangerous",
      "pelirrojo" => "red-haired",
      "pequeño" => "small",
      "perezoso" => "lazy",
      "perfecto" => "perfect",
      "picante" => "spicy",
      "plano" => "flat",
      "pobre" => "poor",
      "primero" => "first",
      "rápido" => "rapid",
      "rico" => "rich",
      "ridículo" => "ridiculous",
      "rubio" => "blond",
      "solo" => "alone",
      "suave" => "soft",
      "sucio" => "dirty",
      "triste" => "sad",
      "vacío" => "empty",
      "viejo" => "old",
      "vivo" => "alive"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "More adjectives"
    )

    words_for_list = {
      "abierto" => "open",
      "abundante" => "abundant",
      "activo" => "active",
      "afligido" => "afflicted",
      "agradecido" => "grateful",
      "anciano" => "elderly",
      "angélico" => "angelic",
      "anterior" => "previous",
      "antipático" => "mean",
      "aparte" => "apart",
      "apenas" => "barely",
      "aplicable" => "applicable",
      "apropiado" => "appropriate",
      "apto" => "apt",
      "aterrador" => "apalling",
      "ausente" => "absent",
      "auténtico" => "authentic",
      "azulado" => "bluish",
      "barato" => "cheap",
      "bendito" => "blessed",
      "bienvenido" => "welcome",
      "bilingüe" => "bilingual",
      "bonito" => "pretty",
      "bruto" => "brute",
      "caro" => "expensive",
      "central" => "central",
      "cerrado" => "closed",
      "cíclico" => "cyclical",
      "cívico" => "civic",
      "civilizado" => "civilized",
      "clásico" => "classic",
      "cómico" => "comical",
      "confundido" => "confused",
      "conocido" => "known",
      "correcto" => "correct",
      "cuidadoso" => "careful",
      "chico" => "small",
      "chocante" => "shocking",
      "débil" => "weak",
      "decente" => "decent",
      "delgado" => "thin",
      "desconocido" => "unknown",
      "descubierto" => "uncovered",
      "despreciable" => "despicable",
      "destructible" => "destructible",
      "digestible" => "digestible",
      "digital" => "digital",
      "digno" => "dignified",
      "divino" => "divine",
      "dócil" => "docile",
      "dogmático" => "dogmatic",
      "dominante" => "dominant",
      "económico" => "cheap",
      "educado" => "polite",
      "eficaz" => "effective",
      "egoísta" => "selfish",
      "elemental" => "elementary",
      "elevado" => "elevated",
      "elocuente" => "eloquent",
      "elusivo" => "elusive",
      "embarazada" => "pregnant",
      "encantado" => "enchanted",
      "encerado" => "waxed",
      "encerrado" => "locked up",
      "envidiable" => "enviable",
      "envidioso" => "envious",
      "escaso" => "scarce",
      "escrito" => "written",
      "espeso" => "thick",
      "estupendo" => "wonderful",
      "eventual" => "eventual",
      "evidente" => "evident",
      "excelente" => "excellent",
      "exquisito" => "exquisite",
      "extra" => "extra",
      "extranjero" => "foreign",
      "extremo" => "extreme",
      "fabuloso" => "fabulous",
      "familiar" => "familiar",
      "fantástico" => "fantastic",
      "fatal" => "fatal",
      "federal" => "federal",
      "femenino" => "feminine",
      "feliz" => "happy",
      "fértil" => "fertile",
      "fiel" => "loyal",
      "financiero" => "financial",
      "flagrante" => "flagrant",
      "flexible" => "flexible",
      "flojo" => "loose",
      "fónico" => "phonic",
      "formidable" => "formidable",
      "franco" => "frank",
      "frito" => "fried",
      "frívolo" => "frivolous",
      "fundido" => "melted",
      "gastado" => "spent",
      "genérico" => "generic",
      "genético" => "genetic",
      "genio" => "genius",
      "geriátrico" => "geriatric",
      "glorioso" => "glorious",
      "grave" => "grave, serious",
      "grosero" => "boorish",
      "hábil" => "able",
      "hablado" => "spoken",
      "hecho a mano" => "handmade",
      "helado" => "frozen",
      "hermético" => "airtight",
      "histórico" => "historical",
      "honesto" => "honest",
      "horrible" => "horrible",
      "humano" => "human",
      "húmedo" => "humid",
      "ignorante" => "ignorant",
      "ilegal" => "illegal",
      "ilegible" => "illegible",
      "ilógico" => "illogical",
      "iluminado" => "illuminated",
      "imaginario" => "imaginary",
      "impaciente" => "impatient",
      "impar" => "uneven, odd",
      "impenetrable" => "impenetrable",
      "imperdonable" => "inexcusable",
      "imparcial" => "impartial",
      "imprudente" => "imprudent",
      "inalámbrico" => "wireless",
      "incalculable" => "incalculable",
      "incoherente" => "incoherent",
      "incomparable" => "incomparable",
      "incompatible" => "incompatible",
      "incompetente" => "incompetent",
      "incompleto" => "incomplete",
      "incrédulo" => "incredulous",
      "indebido" => "improper",
      "indefinido" => "undefined",
      "indecente" => "indecent",
      "indígena" => "native",
      "indivisible" => "indivisible",
      "inédito" => "unpublished",
      "infeccioso" => "infectious",
      "infiel" => "unfaithful",
      "injusto" => "unjust",
      "interesante" => "interesting",
      "inquieto" => "active(hyper)",
      "invisible" => "invisible",
      "irritable" => "irritable",
      "judicial" => "judicial",
      "juguetón" => "playful",
      "juicioso" => "wise",
      "juntos" => "together",
      "jurado" => "sworn",
      "justo" => "just",
      "juvenil" => "youthful",
      "lamentable" => "lamentable",
      "lavable" => "washable",
      "lejano" => "far away",
      "liso" => "smooth",
      "lógico" => "logical",
      "luminoso" => "luminous",
      "lunático" => "lunatic",
      "llamativo" => "showy",
      "lleno" => "full",
      "maduro" => "ripe",
      "magnético" => "magnetic",
      "magnífico" => "magnificent",
      "majestuoso" => "majestic",
      "maligno" => "evil",
      "malvado" => "wicked",
      "mandón" => "bossy",
      "manejable" => "manageable",
      "manuscrito" => "handwritten",
      "mareado" => "seasick",
      "marino" => "marine",
      "mayor" => "older",
      "mejor" => "better",
      "menor" => "younger",
      "mínimo" => "minimal",
      "mucho" => "many",
      "muerto" => "dead",
      "musical" => "musical",
      "necesario" => "necessary",
      "novato" => "newbie",
      "nublado" => "cloudy",
      "optimista" => "optimistic",
      "paciente" => "patient",
      "pagado" => "paid",
      "paralelo" => "parallel",
      "parecido" => "alike",
      "particular" => "particular",
      "pasajero" => "fleeting",
      "pastoral" => "pastoral",
      "pastoso" => "pasty",
      "paternal" => "paternal",
      "patológico" => "pathological",
      "patriótico" => "patriotic",
      "pegajoso" => "sticky",
      "pelado" => "peeled",
      "peludo" => "hairy",
      "penoso" => "shameful",
      "pensativo" => "pensive",
      "perjudicial" => "harmful",
      "permanente" => "permanent",
      "persuasivo" => "persuasive",
      "pesado" => "heavy",
      "piadoso" => "pious",
      "pintoresco" => "picturesque",
      "plácido" => "placid",
      "pocos" => "few",
      "podrido" => "rotten",
      "poético" => "poetic",
      "popular" => "popular",
      "precavido" => "cautious",
      "preferido" => "preferred",
      "preocupado" => "worried",
      "preparado" => "prepared",
      "presente" => "present",
      "privado" => "private",
      "privilegiado" => "privileged",
      "puro" => "pure",
      "quebrado" => "broken",
      "quemado" => "burnt",
      "querido" => "dear",
      "quieto" => "quiet, still",
      "rabioso" => "rabid",
      "radial" => "radial",
      "rancio" => "rancid",
      "razonable" => "reasonable",
      "rebelde" => "rebellious",
      "rebosante" => "overflowing",
      "recargable" => "rechargeable",
      "receloso" => "distrustful",
      "receptivo" => "receptive",
      "reciclable" => "recyclable",
      "reciente" => "recent",
      "recomendable" => "recommended",
      "reconocido" => "recognized",
      "redundante" => "redundant",
      "reemplazable" => "replaceable",
      "refinado" => "refined",
      "regional" => "regional",
      "repugnante" => "repugnant",
      "resonante" => "resonant",
      "reverente" => "reverent",
      "robusto" => "robust",
      "romántico" => "romantic",
      "ronco" => "hoarse",
      "sabroso" => "tasty",
      "sangriento" => "bloody",
      "santo" => "holy",
      "seco" => "dry",
      "seguro" => "safe",
      "selecto" => "select",
      "serio" => "serious",
      "simpático" => "nice",
      "sólido" => "solid",
      "tacaño" => "stingy",
      "todo" => "all",
      "tonto" => "foolish",
      "torcido" => "twisted",
      "transparente" => "transparent",
      "unánime" => "unanimous",
      "único" => "unique, only",
      "verdadero" => "true",
      "valiente" => "valiant",
      "varios" => "variety, various"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end


    #New list

    list = List.create(
      :name => "Infinitives"
    )

    words_for_list = {
      "ser" => "to be",
      "estar" => "to be (temporary, location)",
      "ir" => "to go",
      "alquilar" => "to rent",
      "entrar (en)" => "to enter (into)",
      "necesitar" => "to need",
      "amar" => "to love",
      "enviar" => "to send",
      "olvidar" => "to forget",
      "andar" => "to walk",
      "escuchar" => "to listen to",
      "pagar" => "to pay for",
      "ayudar" => "to help",
      "esperar" => "to hope, to wait for",
      "practicar" => "to practice",
      "bailar" => "to dance",
      "estudiar" => "to study",
      "preguntar" => "to ask",
      "buscar" => "to look for",
      "firmar" => "to sign",
      "preparar" => "to prepare",
      "caminar" => "to walk",
      "ganar" => "to win, earn",
      "regresar" => "to return",
      "cantar" => "to sing",
      "gastar" => "to spend money",
      "saludar" => "to greet",
      "cocinar" => "to cook",
      "hablar" => "to speak, to talk",
      "tocar" => "to touch, to play an instrument",
      "comprar" => "to buy",
      "lavar" => "to wash",
      "tomar" => "to take, to drink",
      "contestar" => "to answer",
      "llegar" => "to arrive",
      "trabajar" => "to work",
      "dejar" => "to allow, to leave",
      "llevar" => "to wear, to carry",
      "viajar" => "to travel",
      "desear" => "to desire",
      "mandar" => "to order",
      "visitar" => "to visit",
      "enseñar" => "to teach",
      "mirar" => "to watch, to look at",
      "aprender" => "to learn",
      "creer" => "to believe",
      "poseer" => "to possess, to own",
      "beber" => "to drink",
      "deber" => "to have to, to owe",
      "prometer" => "to promise",
      "comer" => "to eat",
      "esconder" => "to hide",
      "romper" => "to break",
      "comprender" => "to understand",
      "leer" => "to read",
      "temer" => "to fear",
      "correr" => "to run",
      "meter en" => "to put into",
      "vender" => "to sell",
      "abrir" => "to open",
      "descubrir" => "to discover",
      "permitir" => "to permit",
      "admitir" => "to admit",
      "discutir" => "to discuss",
      "recibir" => "to receive",
      "asistir a" => "to attend",
      "escribir" => "to write",
      "subir" => "to climb, to go up",
      "cubrir" => "to cover",
      "existir" => "to exist",
      "sufrir" => "to suffer",
      "decidir" => "to decide",
      "omitir" => "to omit",
      "unir" => "to unite",
      "describir" => "to describe",
      "partir" => "to divide",
      "vivir" => "to live",
      "soler" => "to tend to",
      "levantarse" => "to get up",
      "madrugar" => "to get up early"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Family"
    )

    words_for_list = {
      "padre" => "father",
      "madre" => "mother",
      "padres" => "parents",
      "hermano" => "brother",
      "hermana" => "sister",
      "tía" => "aunt",
      "tío" => "uncle",
      "sobrino" => "nephew",
      "sobrina" => "niece",
      "hijo" => "son",
      "hija" => "daughter",
      "marido" => "husband",
      "esposa" => "wife",
      "novio" => "boyfriend",
      "novia" => "girlfriend",
      "abuelo" => "grandfather",
      "abuela" => "grandmother",
      "primo" => "male cousin",
      "prima" => "female cousin",
      "nombre" => "name",
      "apellido" => "surname"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Numbers"
    )

    words_for_list = {
      "cero" => "zero",
      "uno" => "one",
      "dos" => "two",
      "tres" => "three",
      "cuatro" => "four",
      "cinco" => "five",
      "seis" => "six",
      "siete" => "seven",
      "ocho" => "eight",
      "nueve" => "nine",
      "diez" => "ten",
      "once" => "eleven",
      "doce" => "twelve",
      "trece" => "thirteen",
      "catorce" => "fourteen",
      "quince" => "fifteen",
      "dieciséis" => "sixteen",
      "diecisiete" => "seventeen",
      "dieciocho" => "eighteen",
      "diecinueve" => "nineteen",
      "veinti" => "twenty",
      "veintiuno" => "twenty-one",
      "veintidós" => "twenty-two",
      "veintitrés" => "twenty-three",
      "veinticuatro" => "twenty-four",
      "veinticinco" => "twenty-five",
      "veintiséis" => "twenty-six",
      "veintisiete" => "twenty-seven",
      "veintiocho" => "twenty-eight",
      "veintinueve" => "twenty-nine",
      "treinta" => "thirty",
      "treinta y uno" => "thirty-one",
      "treinta y dos" => "thirty-two",
      "treinta y tres" => "thirty-three",
      "treinta y cuatro" => "thirty-four",
      "treinta y cinco" => "thirty-five",
      "treinta y seis" => "thirty-six",
      "treinta y siete" => "thirty-seven",
      "treinta y ocho" => "thirty-eight",
      "treinta y nueve" => "thirty-nine",
      "cuarenta" => "forty",
      "cincuenta" => "fifty",
      "sesanta" => "sixty",
      "setenta" => "seventy",
      "ochenta" => "eighty",
      "noventa" => "ninety",
      "cien" => "one hundred",
      "ciento y uno" => "one hundred and one",
      "doscientos" => "two hundred",
      "quinientos" => "five hundred",
      "setecientos" => "seven hundred",
      "novecientos" => "nine hundred",
      "mil" => "one thousand"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Days, Months"
    )

    words_for_list = {
      "lunes" => "Monday",
      "martes" => "Tuesday",
      "miércoles" => "Wednesday",
      "jueves" => "Thursday",
      "viernes" => "Friday",
      "sábado" => "Saturday",
      "domingo" => "Sunday",
      "enero" => "January",
      "febrero" => "February",
      "marzo" => "March",
      "abril" => "April",
      "mayo" => "May",
      "junio" => "June",
      "julio" => "July",
      "agosto" => "August",
      "septiembre" => "September",
      "octubre" => "October",
      "noviembre" => "November",
      "diciembre" => "December",
      "la primavera" => "spring",
      "el verano" => "summer",
      "el otoño" => "autumn",
      "el invierno" => "winter",
      "semana" => "week",
      "fin de semana" => "weekend"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end


    #New list

    list = List.create(
      :name => "Directions"
    )

    words_for_list = {
      "dentro de" => "inside",
      "encima de" => "on top of",
      "sobre" => "above",
      "delante de" => "in front of",
      "detrás de" => "behind",
      "debajo de" => "under",
      "al lado de" => "next to / beside",
      "entre" => "between",
      "a la derecha de" => "to the right of",
      "a la izquierda de" => "to the left of",
      "enfrente de" => "opposite / facing",
      "arriba" => "up",
      "abajo" => "down",
      "cerca" => "near",
      "lejos" => "far",
      "aquí" => "here",
      "allí" => "there",
      "fuera de" => "outside",
      "al fondo de" => "at the end of"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end


    #New list

    list = List.create(
      :name => "Around the house"
    )

    words_for_list = {
      "los parlantes" => "(hifi) speakers",
      "el árbol" => "tree",
      "el banco" => "bench",
      "el frigorífico" => "refrigerator",
      "el lavabo" => "handbasin",
      "la estantería" => "shelves",
      "el armario" => "wardrobe",
      "la cama" => "bed",
      "la mesa" => "table",
      "la mesilla" => "little table",
      "la ducha" => "shower",
      "el sillón" => "armchair",
      "la bañera" => "bath",
      "la lavadora" => "washing machine",
      "la lámpara" => "light",
      "el ventilador" => "fan",
      "el techo" => "ceiling",
      "el piso" => "apartment",
      "el apartamento" => "small apartment",
      "el estudio" => "studio apartment; study",
      "el contrato" => "contract",
      "la casa" => "house",
      "la alfombra" => "carpet (rug)",
      "el ascensor" => "elevator",
      "la casa" => "house",
      "la cortina" => "curtain",
      "el cuadro" => "painting",
      "el cuarto" => "room",
      "el espejo" => "mirror",
      "los muebles" => "furniture",
      "los objetos" => "objects",
      "la pared" => "wall",
      "la puerta" => "door",
      "la cocina" => "kitchen",
      "el cuarto de baño" => "bathroom",
      "el dormitorio" => "bedroom",
      "las llaves" => "keys",
      "el ordenador" => "computer",
      "el pasillo" => "corridor",
      "el plano" => "plan / map",
      "el salón" => "lounge",
      "el salón-comedor" => "lounge-dining room",
      "la silla" => "chair",
      "el sofá" => "couch",
      "el suelo" => "floor",
      "la ventana" => "window",
      "los vecinos" => "neighbours",
      "la calle" => "street"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Professions"
    )

    words_for_list = {
      "médico" => "doctor",
      "enfermero" => "nurse",
      "periodista" => "journalist",
      "pintor" => "painter",
      "albañil" => "builder",
      "arquitecto" => "architect",
      "diseñador" => "designer",
      "profesor" => "teacher",
      "abogado" => "lawyer",
      "secretario" => "secretary",
      "empresario" => "businessman",
      "cajero" => "teller",
      "camarero" => "waiter",
      "cocinero" => "cook",
      "dentista" => "dentist",
      "guía" => "guide",
      "artista" => "artist",
      "taxista" => "taxi driver",
      "actor" => "actor",
      "alcalde" => "mayor",
      "azafata" => "air hostess",
      "economista" => "economist",
      "peluquero" => "hairdresser",
      "panadero" => "baker",
      "piloto" => "pilot",
      "policía" => "police"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end
    #New list

    list = List.create(
      :name => "Present tense"
    )

    words_for_list = {
      "tengo" => "I have",
      "tienes" => "you have",
      "tiene" => "he has",
      "tenemos" => "we have",
      "tenéis" => "you (pl.) have",
      "tienen" => "they have",
      "voy" => "I go",
      "vas" => "you go",
      "va" => "he goes",
      "vamos" => "we go",
      "vais" => "you (pl.) go",
      "van" => "they go",
      "como" => "I eat",
      "comes" => "you eat",
      "come" => "he eats",
      "comemos" => "we eat",
      "coméis" => "you (pl.) eat",
      "comen" => "they eat",
      "tengo" => "I have",
      "tienes" => "you have",
      "tiene" => "he has",
      "tenemos" => "we have",
      "tenéis" => "you (pl.) have",
      "tienen" => "they have",
      "soy" => "I am",
      "eres" => "you are",
      "es" => "he is",
      "somos" => "we are",
      "sois" => "you (pl.) are",
      "son" => "they are",
      "estudio" => "I study",
      "estudias" => "you study",
      "estudia" => "he studies",
      "estudiamos" => "we study",
      "estudiás" => "you (pl.) study",
      "estudian" => "they study",
      "vivo" => "I live",
      "vives" => "you live",
      "vive" => "he lives",
      "vivimos" => "we live",
      "vivís" => "you (pl.) live",
      "viven" => "they live",
      "trabajo" => "I work",
      "trabajas" => "you work",
      "trabaja" => "he works",
      "trabajamos" => "we work",
      "trabajáis" => "you (pl.) work",
      "trabajan" => "they work",
      "hablo" => "I speak",
      "hablas" => "you speak",
      "habla" => "he speaks",
      "hablamos" => "we speak",
      "habláis" => "you (pl.) speak",
      "hablan" => "they speak",
      "pongo" => "I put",
      "pones" => "you put",
      "pone" => "he puts",
      "ponemos" => "we put",
      "ponéis" => "you (pl.) put",
      "ponen" => "they put",
      "estoy" => "I am (location)",
      "estás" => "you are (location)",
      "está" => "he is (location)",
      "estamos" => "we are (location)",
      "estáis" => "you (pl.) are (location)",
      "estan" => "they are (location)",
      "hago" => "I do",
      "haces" => "you do",
      "hace" => "he does",
      "hacemos" => "we do",
      "hacéis" => "you (pl.) do",
      "hacen" => "they do",
      "compro" => "I buy",
      "compras" => "you buy",
      "compra" => "he buys",
      "compramos" => "we buy",
      "compráis" => "you (pl.) buy",
      "compran" => "they buy",
      "cruzo" => "I cross",
      "cruzas" => "you cross",
      "cruza" => "he crosses",
      "cruzamos" => "we cross",
      "cruzáis" => "you (pl.) cross",
      "cruzan" => "they cross",
      "giro" => "I turn",
      "giras" => "you turn",
      "gira" => "he turns",
      "giramos" => "we turn",
      "giráis" => "you (pl.) turn",
      "giran" => "they turn",
      "sigo" => "I follow",
      "sigues" => "you follow",
      "sigue" => "he follows",
      "seguimos" => "we follow",
      "seguís" => "you (pl.) follow",
      "siguen" => "they follow"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Colours"
    )

    words_for_list = {
      "rojo" => "red",
      "anaranjado" => "orange",
      "amarillo" => "yellow",
      "verde" => "green",
      "azul" => "blue",
      "morado" => "purple"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Animals"
    )

    words_for_list = {
      "el elefante" => "elephant",
      "el león" => "lion",
      "el hipopótamo" => "hippopotamus",
      "el rinoceronte" => "rhinoceros",
      "el cuerno" => "antler",
      "la trompa" => "trunk",
      "el colmillo" => "tusk",
      "el tigre" => "tiger",
      "el alce" => "moose",
      "el oso" => "bear",
      "la llama" => "llama",
      "la cebra" => "zebra",
      "el bisonte" => "bison",
      "el caballo" => "horse",
      "el burro" => "donkey",
      "la oveja" => "sheep",
      "el venado" => "deer",
      "el chivo" => "goat",
      "la jirafa" => "giraffe",
      "el cerdo" => "hog",
      "la vaca" => "cow",
      "el perro" => "dog",
      "el gato" => "cat",
      "el mono" => "monkey",
      "el zorro" => "fox"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

    #New list

    list = List.create(
      :name => "Positive and negative"
    )

    words_for_list = {
      "algo" => "something",
      "nada" => "nothing",
      "alguien" => "somebody",
      "nadie" => "nobody",
      "algúno" => "some, something",
      "ningúno"  => "no, none",
      "siempre" => "always",
      "nunca" => "never",
      "jamás" => "never, ever",
      "también" => "also",
      "tampoco" => "neither"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end


    #New list

    list = List.create(
      :name => "Time"
    )

    words_for_list = {
      "de la tarde" => "in the afternoon",
      "de la mañana" => "in the morning",
      "de la noches" => "in the evening",
      "de la madrugado" => "in the early morning",
      "a la medianoche" => "at midnight",
      "al mediadía" => "at noon",
      "el año pasado" => "last year",
      "durante el día" => "during the day",
      "es la una" => "it's one o'clock",
      "son las ocho" => "it's eight o'clock",
      "son las tres y cinco" => "it's five past three",
      "es la una y media" => "it's half past one",
      "son las tres menos doce" => "it's twelve minutes to three",
      "son las cuatro y cuarto" => "it's quarter past four",
      "anoche" => "last night",
      "la semana que viene" => "next week",
      "el lunes que viene" => "next Monday",
      "en punto" => "on the dot",
      "temprano" => "early",
      "tarde" => "late",
      "ayer" => "yesterday",
      "don las diez de la noche" => "it's ten in the evening"
    }

    words_for_list.each do |k,v|
      word = Word.create(
        :word => k,
        :definition => v
      )
      word.lists << list
    end

  end
end