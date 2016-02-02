# Default symbols for refering to a unit in the REPL.

@uall m  _Meter
@u    ft _Foot
@u    inch _Inch

@uall s   _Second
@u    minute _Minute
@u    h   _Hour

@uall g _Gram

@uall A _Ampere
@uall C _Coulomb
@uall V _Volt

@u    ° _Degree
@u    rad _Radian

# Default rules for addition and subtraction.

for op in [:+, :-]
    @eval ($op)(x::UnitData, y::UnitData) = max(x,y)
end
