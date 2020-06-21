SSCCE for https://github.com/truqu/elm-review-noleftpizza/issues/3

To reproduce the issue run

```bash
npm install
npx elm-review
```

## Expected output

no elm-review warnings, because `<|`-s used in the example are not redundant.

## Actual output

```
npx elm-review
-- ELM-REVIEW ERROR ------------------------------------------- src/Main.elm:8:5

(fix) NoLeftPizza: Redundant left pizza (<|) operator application

7| f i =
8|     String.fromInt <| i + 1
       ^^^^^^^^^^^^^^^^^^^

This left pizza operator can be removed without any further changes, without
changing the semantics of your code.

Using `<|` like this adds visual noise to code that can make it harder to read.

────────────────────────────────────────────────────────────── src/Main.elm:13:5

(fix) NoLeftPizza: Redundant left pizza (<|) operator application

12| view =
13|     Html.text <| "a" ++ "b"
        ^^^^^^^^^^^^^^^^

This left pizza operator can be removed without any further changes, without
changing the semantics of your code.

Using `<|` like this adds visual noise to code that can make it harder to read.

Errors marked with (fix) can be fixed automatically using `elm-review --fix`.
```


