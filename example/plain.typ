#import "../template.typ": template-one-side
#import "@preview/cetz:0.3.2"

#let front = [
  #place(
    top + left,
    dx: 10%,
    dy: 10%,
    text("株式会社〇〇 〇〇部")
  )

  #place(
    top + left,
    dx: 15%,
    dy: 35%,
    {
      text("田井 譜須斗", size: 16pt)
      v(8pt, weak: true)
      text("tai psuto", size: 12pt)
      
    }
  )

  #place(
    top + left,
    dx: 10%,
    dy: 70%,
    {
      text("〒100-0000 TEL: 03-1234-5678", size: 10pt)
      v(8pt, weak: true)
      text("東京都xxx区yyy町 1-1-1 zzzビル1F", size: 10pt)
    }
  )

  #place(
    top + left,
    dx: 70%,
    dy: 5%,
    {
      cetz.canvas({
        import cetz.draw: *
        rect(
          (2,0),
          (rel: (2, 2)),
          radius: 25%,
          fill: gradient.linear(rgb("#51ceff"), blue, angle: 45deg),
          stroke: none
        )
      })
    }
  )
]


#template-one-side(
  front
)