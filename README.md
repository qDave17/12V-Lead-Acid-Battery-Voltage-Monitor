Scopul proiectului de față este de a realiza design-ul PCB al unui monitor de tensiune pentru
baterii cu plumb-acid de 12V, conform unei scheme electrice și a unor parametri dați. Monitorul
vizualizează tensiunea bateriei cu ajutorul a 10 LED-uri și este bazat pe circuitul integrat LM3914 de
la Texas Instruments.

Circuitul LM3914 detectează nivelul de tensiune la intrare și controlează cele 10 diode
emițătoare de lumină (LED-uri) în funcție de tensiunea detectată. Alimentarea circuitului se realizează
de la aceeași baterie, nefiind necesară, așadar, o sursă de alimentare separată.

La intrarea circuitului, tensiunea bateriei este aplicată unui pin de intrare al LM3914, care
detectează nivelul tensiunii și activează corespunzător unul sau mai multe LED-uri de pe afișaj. IC-ul
LM3914 permite operarea într-unul din două moduri:
• Mod punct (DOT mode): activează un singur LED corespunzător nivelului curent de
tensiune detectat.
• Mod bară (BAR mode): activează toate LED-urile de la primul LED până la cel
corespunzător tensiunii detectate.
Comutarea între aceste două moduri se realizează cu ajutorul unui jumper. Circuitul include un
potențiometru care permite reglarea intervalului de tensiune detectat și afișat, oferind astfel
flexibilitate pentru diverse aplicații.

