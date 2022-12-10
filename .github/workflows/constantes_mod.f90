module constantes_mod
    implicit none
    !déclaration des constantes du sujet
    integer,parameter :: PR=8

    !paramètres de l'air à l'entré du séchoir
    real(kind=PR),parameter ::Va=2._PR   !vitesse de l'air à l'entrée (m/s)
    real(kind=PR),parameter ::Ta0=45+273.15_PR !Température de l'air à l'entré (°C)
    real(kind=PR),parameter ::Hra0=0.3  !humidité relative de l'air à l'entré
                                        !(30%)

    !paramètres du produit
    real(kind=PR),parameter :: epsilone=0.416 !porosité de l'amas
    real(kind=PR),parameter :: MvPsec= 1400._PR!masse volumique du produit sec(kg/m3)
    real(kind=PR),parameter :: CPsec=1300._PR !capacité thermique massique du
                                              !produit  (J/kg/K)
    real(kind=PR),parameter ::Wpi=0.6 !teneur en eau initiale du produit
    real(kind=PR),parameter ::Tpi=25._PR !température initiale du produit (°C)
    real(kind=PR),parameter ::Kv=1852._PR !surface spécifique de l'amas (m²/m3)

    !paramètres de l'eau et de l'air ambiant
    real(kind=PR),parameter ::CPeau= 4187._PR !capacité thermique massique de
                                                !l'eau (J/kg/K)
    real(kind=PR),parameter ::Tam=25._PR !température de l'air ambiant (°C)
    real(kind=PR),parameter ::Hr=0.6 !humidité relative de l'air ambient (60%)
    real(kind=PR),parameter ::CPvap=1883._PR !capacité thermique massique de la
                                            !vapeur d'eau (J/kg/K)
    real(kind=PR),parameter ::CPairSec=1005._PR !capacité thermique massique
                                                !de l'air sec (J/kg/K)


    real(kind=PR),parameter :: alpha = 348.29_PR*0.622_PR
    real(kind=PR),parameter :: beta = 0.622_PR


    real(kind=PR),parameter :: A0 = 0.25037_PR*(10._PR**(4))
    real(kind=PR),parameter :: A1 = -0.27913724_PR*(10._PR**(1))
    real(kind=PR),parameter :: A2 =  0.12413792_PR*(10._PR**(-1))
    real(kind=PR),parameter :: A3 = -0.12963934_PR*(10._PR**(-3))
    real(kind=PR),parameter :: A4 = 0.47175172_PR*(10._PR**(-6))
    real(kind=PR),parameter :: A5 = -0.69851352_PR*(10._PR**(-9))

    !Partie appendices_mod

    real(kind=PR),parameter ::RHO_0 = 1.0_PR * (1.01325**5) !Pression atmosphérique Pa




end module
