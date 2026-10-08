// FACTURE EDH — reproduction Typst (1 page Letter)
#set page(paper: "us-letter", margin: (x: 6mm, y: 6mm))
#set text(font: "DejaVu Sans", size: 7pt, fill: rgb("#111111"))
#set par(spacing: 0.55em, leading: 0.8em)

#let border = 0.65pt + rgb("#5a5a5a")
#let thin = 0.45pt + rgb("#777777")
#let title-fill = rgb("#555555")
#let title-style(s) = text(size: 9.5pt, weight: 700, fill: title-fill)[#s]

#let card(title, body) = rect(
  width: 100%, stroke: border, radius: 7pt, inset: 0pt,
)[
  #block(width: 100%, inset: (x: 6pt, y: 3.5pt))[#title]
  #line(length: 100%, stroke: thin)
  #block(width: 100%, inset: (x: 6pt, y: 5pt))[#body]
]

// Fixed-height card for equal-height pairs (A=B, C=D, E+G=F)
#let card-fixed(title, body, h) = rect(
  width: 100%, height: h, stroke: border, radius: 7pt, inset: 0pt,
)[
  #block(width: 100%, inset: (x: 6pt, y: 3.5pt))[#title]
  #line(length: 100%, stroke: thin)
  #block(width: 100%, inset: (x: 6pt, y: 5pt))[#body]
]

// ---------- TOP ----------
#grid(columns: (68pt, 1fr, 1fr), gutter: 4pt, align: (center, center, left))[
  #image("edhLogo.jpeg", width: 52pt)
][
  #rect(width: 100%, height: 54pt, stroke: border, radius: 9pt, inset: 3pt)[
    #align(center + horizon)[
      #text(size: 22pt, weight: 900, fill: rgb("#3d3d46"))[FACTURE EDH] \
      #h(1fr) #text(size: 9.5pt)[Duplicata] #h(6pt)
    ]
  ]
][
  #rect(width: 100%, height: 54pt, stroke: border, radius: 9pt, inset: (x: 6pt, y: 4pt))[
    Date d'émission: #h(6pt) 01/10/2026 \
    #text(size: 8pt, weight: 800)[TOTAL A PAYER HTG :] #h(1fr) #text(size: 9.5pt, weight: 800)[1,250.25] \
    Date limite de paiement: #h(6pt) 12/10/2026
  ]
]

#v(3pt)

// ---------- A / B (equal height) ----------
#grid(columns: (1fr, 1fr), gutter: 4pt)[
  #card-fixed(title-style[A- Vos coordonnées], [
    #grid(columns: (62pt, 1fr), row-gutter: 6.5pt, gutter: 3pt)[
      #text(weight: 700)[Nom Complet]
    ][
      : JEAN-BAPTISTE JEHU ELAM S. UZZA SABTAR
    ][
      #text(weight: 700)[Adresse]
    ][
      : 5, RUE LA VICTOIRE, CARADEUX, 2E BELLEVUE TABARRE
    ][
      #text(weight: 700)[Propriété]
    ][
      : RUE LA VICTOIRE #5
    ][
      #text(weight: 700)[Loc]
    ][
      : T2E
    ][
      #text(weight: 700)[Commune]
    ][
      : Tabarre
    ][
      #text(weight: 700)[District]
    ][
      : Port-au-Prince
    ][
      #text(weight: 700)[Département]
    ][
      : Ouest
    ]
  ], 118pt)
][
  #card-fixed(title-style[B- Référence de votre facture], [
    #grid(columns: (1fr, auto), gutter: 4pt, row-gutter: 6.5pt)[
      REFERENCE DE PAIEMENT :
    ][
      2006921068-85
    ][
      #text(weight: 700)[Numéro de Facture]
    ][
      #text(weight: 700)[F042026101000003457]
    ][
      DATE D'EMISSION :
    ][
      01/10/2026
    ][
      CONDITION FISCALE :
    ][
      Consommateur Final
    ]
    #v(4pt)
    #text(weight: 700)[VOTRE AGENCE EDH :] AGENCE~~TABARRE \
    Visitez notre site #underline[www.edh.ht]
  ], 118pt)
]

#v(3pt)

// ---------- C / D (equal height) ----------
#grid(columns: (1fr, 1fr), gutter: 4pt)[
  #card-fixed(title-style[C- Adresse du Branchement], [
    RUE LA VICTOIRE \
    TABARRE \
    POT: GBD015B \
    #v(2pt)
    #grid(columns: (auto, auto, auto, auto, auto, auto), gutter: 4pt)[
      #text(weight: 700)[Route:]
    ][
      02
    ][
      #text(weight: 700)[Itinéraire:]
    ][
      0021
    ][
      #text(weight: 700)[AOL:]
    ][
      410
    ]
  ], 74pt)
][
  #card-fixed(grid(columns: (1fr, auto))[#title-style[D- Votre contrat]][#title-style[NIC : 3106921]], [
    #grid(columns: (86pt, 1fr), gutter: 3pt, row-gutter: 3pt)[
      #text(weight: 700)[Titulaire]
    ][
      : JEAN-BAPTISTE JEHU ELAM S. UZZA SABTAR
    ][
      #text(weight: 700)[Tarif]
    ][
      : Res
    ][
      #text(weight: 700)[Tension]
    ][
      : Basse 120 Monophasée
    ][
      #text(weight: 700)[Puissance souscrite]
    ][
      : 0 kW
    ]
  ], 74pt)
]

#v(3pt)

// ---------- E+G / F (equal height: E 70 + G 150 + 4 spacing = F 224) ----------
#grid(columns: (1fr, 1fr), gutter: 4pt)[
  #grid(rows: (70pt, 150pt), row-gutter: 4pt)[
    #card-fixed(title-style[E- Relevé de votre compteur], [
      #table(
        columns: (auto, auto, auto, auto, auto, auto),
        stroke: none,
        inset: (x: 2pt, y: 3pt),
        align: (left, left, right, right, right, right),
        [#text(size: 5.5pt, weight: 700)[TYPE DE\ LECTURE]], [#text(size: 5.5pt, weight: 700)[NO. DE\ COMPTEUR]], [#text(size: 5.5pt, weight: 700)[LECTURE\ ANTERIEURE]], [#text(size: 5.5pt, weight: 700)[LECTURE\ ACTUELLE]], [#text(size: 5.5pt, weight: 700)[MULTIPLE]], [#text(size: 5.5pt, weight: 700)[CONSOMMATION]],
        [#text(size: 6pt)[Active BT]], [#text(size: 6pt)[0422590]], [#text(size: 6pt)[4,961]], [#text(size: 6pt)[5,111]], [#text(size: 6pt)[1.0000]], [#text(size: 6pt)[150kWh]],
      )
    ], 70pt)
  ][
    #card-fixed(title-style[G- Historique consommation], [
      #grid(columns: (74pt, 1fr), gutter: 3pt)[
        #table(
          columns: (auto, auto, auto),
          stroke: none,
          inset: (x: 1.5pt, y: 1.8pt),
          align: (left, right, right),
          [#text(size: 5.5pt, weight: 700)[Mois]], [#text(size: 5.5pt, weight: 700)[Cons.]], [#text(size: 5.5pt, weight: 700)[Puis.]],
          [#text(size: 5.5pt)[Oct/25]], [#text(size: 5.5pt)[48]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Nov/25]], [#text(size: 5.5pt)[71]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Déc/25]], [#text(size: 5.5pt)[77]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Jan/26]], [#text(size: 5.5pt)[58]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Fév/26]], [#text(size: 5.5pt)[78]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Mar/26]], [#text(size: 5.5pt)[87]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Avr/26]], [#text(size: 5.5pt)[102]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Mai/26]], [#text(size: 5.5pt)[83]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Jun/26]], [#text(size: 5.5pt)[98]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Jui/26]], [#text(size: 5.5pt)[93]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Aoû/26]], [#text(size: 5.5pt)[69]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Sep/26]], [#text(size: 5.5pt)[62]], [#text(size: 5.5pt)[0.000]],
          [#text(size: 5.5pt)[Oct/26]], [#text(size: 5.5pt)[62]], [#text(size: 5.5pt)[0.000]],
        )
      ][
        #let chart-h = 68pt
        #block(width: 100%)[
          #grid(columns: (20pt, 1fr), gutter: 2pt)[
            #block(width: 20pt, height: chart-h)[
              #place(top, dx: 0pt, dy: 0pt)[#text(size: 6pt, weight: 700)[kWh]]
              #place(top, dx: 0pt, dy: 9pt)[#text(size: 5.5pt)[102—]]
              #place(top, dx: 0pt, dy: 25pt)[#text(size: 5.5pt)[77—]]
              #place(top, dx: 0pt, dy: 42pt)[#text(size: 5.5pt)[51—]]
              #place(top, dx: 0pt, dy: 59pt)[#text(size: 5.5pt)[26—]]
            ]
          ][
            #grid(columns: (10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt, 10pt), gutter: 2pt, align: bottom)[
              #box(height: 48 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 71 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 77 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 58 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 78 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 87 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 102 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 83 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 98 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 93 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 69 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 62 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ][
              #box(height: 62 / 102 * 68pt, width: 8pt, fill: rgb("#222222"))
            ]
            #line(length: 100%, stroke: 0.6pt)
            #grid(columns: (12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt, 12pt))[#text(size: 4.2pt)[2025-Oct]][#text(size: 4.2pt)[Nov]][#text(size: 4.2pt)[Dec]][#text(size: 4.2pt)[Jan]][#text(size: 4.2pt)[Fev]][#text(size: 4.2pt)[Mar]][#text(size: 4.2pt)[Avr]][#text(size: 4.2pt)[Mai]][#text(size: 4.2pt)[Jun]][#text(size: 4.2pt)[Jul]][#text(size: 4.2pt)[Aou]][#text(size: 4.2pt)[Sep]][#text(size: 4.2pt)[2026-Oct]]
          ]
        ]
      ]
    ], 150pt)
  ]
][
  #rect(width: 100%, height: 224pt, stroke: border, radius: 7pt, inset: 0pt)[
    #block(width: 100%, inset: (x: 6pt, y: 3.5pt))[#title-style[F- Eléments facturés au cours de la période]]
    #line(length: 100%, stroke: thin)
    #block(width: 100%, inset: (x: 6pt, y: 5pt))[
      #grid(columns: (1fr, auto))[
        #text(weight: 700)[Période du:]
      ][
        #underline[31/07/2026 - 01/10/2026 = 62 Jours]
      ]
      #v(6pt)
      #grid(columns: (1fr, 24pt, auto), row-gutter: 3pt, gutter: 3pt)[
        #text(size: 6pt, weight: 700)[Remboursement Frais Fixe Estime]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[-155.00]]
      ][
        #text(size: 6pt, weight: 700)[Remboursement Energie Estimee]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[-470.10]]
      ][
        #text(size: 6pt, weight: 700)[Tarif abonnement]
      ][
      ][
      ][
        #text(size: 6pt)[62 jours, HTG 150.00]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[310.00]]
      ][
        #text(size: 6pt, weight: 700)[Énergie]
      ][
      ][
      ][
        #text(size: 6pt)[62 kWh x HTG 4.80]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[297.60]]
      ][
        #text(size: 6pt)[88 kWh x HTG 5.10]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[448.80]]
      ][
        #text(size: 6pt, weight: 700)[TCA]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[43.13]]
      ][
        #text(size: 6pt, weight: 700)[Frais spécial]
      ][
        #text(size: 6pt)[HTG]
      ][
        #align(right)[#text(size: 6pt)[4.31]]
      ]
      #v(1fr)
      #grid(columns: (1fr, auto))[
        #text(size: 7.5pt, weight: 800)[MONTANT NOUVELLE FACTURE:]
      ][
        #text(size: 8pt, weight: 800)[478.74]
      ]
      #v(1pt)
    ]
  ]
]

#v(3pt)

// ---------- H ----------
#card(grid(columns: (auto, 1fr), gutter: 10pt)[#title-style[H- Votre situation]][#text(size: 7.5pt)[à la date du~~~01/10/2026]])[
  #grid(columns: (1fr, auto, auto, auto), gutter: 6pt, row-gutter: 3pt)[
    1 - Rappel montant dû au~~~01/10/2026~~/ Facture antérieure
  ][
    :
  ][
    HTG
  ][
    #align(right)[5,771.51]
  ][
    2- Vos règlements enregistrés
  ][
    :
  ][
    HTG
  ][
    #align(right)[5,000.00]
  ][
    3- Eléments facturés au cours de la période (F)
  ][
    :
  ][
    HTG
  ][
    #align(right)[478.74]
  ]
  #line(length: 68%, stroke: 0.8pt)
  #grid(columns: (1fr, auto, auto, auto, auto), gutter: 6pt)[
    #text(size: 8.5pt, weight: 800)[MONTANT TOTAL DÛ]
  ][
    #text(size: 8.5pt, weight: 800)[:]
  ][
    #text(size: 8.5pt, weight: 800)[HTG]
  ][
    #text(size: 8.5pt, weight: 800)[1,250.25]
  ][
    A payer avant le~~12/10/2026
  ]
  #v(1pt)
  Le paiement intégral du montant dû avant la date limite est exigé pour éviter tout débranchement. EDH vous remercie pour le paiement de votre facture. \

  #v(1pt)
  #text(weight: 700)[N.B : Désormais, vous pouvez payer vos factures d'Electricité depuis le réseau lajancash et aussi par Carte de Crédit.]
]

#v(2pt)
#block(width: 100%)[
  #line(length: 100%, stroke: (dash: "dashed", thickness: 0.45pt))
  #place(top + right, dx: 0pt, dy: -6pt)[#text(size: 7pt)[✂]]
]

#v(2pt)

// ---------- STUB ----------
#rect(width: 100%, stroke: border, radius: 7pt, inset: 0pt)[
  #grid(columns: (1.25fr, 1fr), gutter: 0pt)[
    #block(inset: (x: 6pt, y: 4pt))[
      #grid(columns: (46pt, 1fr), gutter: 5pt, align: (center, left))[
        #image("edhLogo.jpeg", width: 40pt)
      ][
        #align(center)[#text(size: 10pt)[Duplicata]] \ #text(size: 9.5pt)[Récépissé Facture du~~~01/10/2026]
      ]
    ]
  ][
    #block(inset: (x: 6pt, y: 4pt))[
      #align(right)[#text(size: 9.5pt, weight: 700)[NIC : 3106921]] \
      #grid(columns: (auto, 1fr), gutter: 3pt)[
        #text(size: 6.5pt, weight: 700)[REFERENCE DE PAIEMENT]
      ][
        #text(size: 6.5pt)[2006921068-85]
      ][
        #text(size: 6.5pt, weight: 700)[Date limite de paiement:]
      ][
        #text(size: 6.5pt)[12/10/2026]
      ]
    ]
  ]
  #line(length: 100%, stroke: thin)
  #block(width: 100%, inset: (x: 6pt, y: 4pt))[
    #grid(columns: (1fr, 1fr), gutter: 6pt)[
      #text(size: 7pt, weight: 700)[TITULAIRE DU CONTRAT] \ #v(4pt) #text(size: 7pt, weight: 700)[ADRESSE DU BRANCHEMENT] \ RUE LA VICTOIRE \ #text(weight: 700)[LOC]~T2E \ #text(weight: 700)[TARIF]~Res
    ][
      #grid(columns: (1fr, auto), gutter: 5pt)[
        #text(size: 8pt, weight: 800)[MONTANT TOTAL DÛ HTG]
      ][
        #text(size: 8.5pt, weight: 800)[1,250.25]
      ]
      #v(6pt)
      #grid(columns: (auto, auto), gutter: 6pt)[
        #text(weight: 700)[Route:]
      ][
        02
      ][
        #text(weight: 700)[Itiner:]
      ][
        0021
      ]
    ]
    #v(4pt)
  ]
]
