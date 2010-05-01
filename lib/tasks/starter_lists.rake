namespace :lists do
  desc "Add a couple of starter lists"
  task :create_lists => :environment do
    
    [Word, List].each(&:delete_all)
    
    list = List.create(
      :name => "Common adjectives"
    )
    words_for_list = {
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
      "estudiar" => "to study",
      "hacer" => "to do",
      "vivir" => "to live",
      "trabajar" => "to work",
      "comer" => "to eat", 
      "hablar" => "to speak",
      "tener" => "to have",
      "poner" => "to put",
      "montar" => "to ride", 
      "soler" => "to tend to",
      "levantarse" => "to get up",
      "madrugar" => "to get up early",
      "buscar" => "to look for",
      "alquilar" => "to rent",
      "comprar" => "to buy",
      "encontrar" => "to find",
      "firmar" => "to sign"
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
      "compañera" => "girlfriend (lesbian)",
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
      "veintidos" => "twenty-two",
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
      "el pasillo" => "corridor"
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

  end
end