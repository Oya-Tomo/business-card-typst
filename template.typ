#let card-frame = (
  content
) => {
  v(0pt, weak: true)
  box(
    width: 91mm,
    height: 55mm,
    inset: 5mm,
    stroke: black,
    radius: 0pt,
    clip: true
  )[
    #content
  ]
}

#let template-one-side(
  front
) = {
  set page(
    paper: "a4",
    margin: (
      top: 11mm,
      bottom: 11mm,
      left: 14mm,
      right: 14mm,
    ),
    columns: 2,
  )
  set columns(gutter: 0pt)

  card-frame(front) * 10
}

#let template-both-side(
  front,
  back,
) = {
  set page(
    paper: "a4",
    margin: (
      top: 11mm,
      bottom: 11mm,
      left: 14mm,
      right: 14mm,
    ),
    columns: 2,
  )
  set columns(gutter: 0pt)

  card-frame(front) * 10
  card-frame(back) * 10
}