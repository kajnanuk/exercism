planet_factor("Mercury", 0.2408467).
planet_factor("Venus", 0.61519726).
planet_factor("Earth", 1.0).
planet_factor("Mars", 1.8808158).
planet_factor("Jupiter", 11.862615).
planet_factor("Saturn", 29.447498).
planet_factor("Uranus", 84.016846).
planet_factor("Neptune", 164.79132).
space_age(Planet, AgeSec, Years):-
    planet_factor(Planet, Factor),
    Scaled is AgeSec / Factor,
    Years is Scaled / 31557600.
