module ReviewConfig exposing (config)


import NoLeftPizza
import Review.Rule as Rule exposing (Rule)


config : List Rule
config =
    [ NoLeftPizza.rule NoLeftPizza.Redundant
    ]
