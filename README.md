# business-card-typst

## template

- template-one-side
- template-both-side

## usage

### template-one-side

```typst
#import "template.typ": template-one-side

#let front = [
  front
]

#template-one-side(
  front
)
```

### template-both-side

```typst
#import "template.typ": template-both-side

#let front = [
  front
]

#let back = [
  back
]

#template-both-side(
  front,
  back
)
```