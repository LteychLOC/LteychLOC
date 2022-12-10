program sechage
    use constantes_mod
    use appendices_mod
    use function_mod

    implicit none

    real(PR) :: a, b, Tp !température variant pendant le temps
    real(PR) :: m_eau, m_air_sec

    ! print*, log(3._PR) !valeur de ln en mathématique
    ! print*, Psat(20._PR)
    a = -2.6_PR*(10._PR**(-4))

    b = -0.00026_PR

    print*, a, b,  D(20._PR)
    print*, exp((-51080 * 1._PR)/8.314* 45)

    print*, RHO_air_humide(Wa(m_eau, m_air_sec),Ta0) ! 110808.46

    print*, RHO_air_sec(Ta0, Hra0)

    m_eau =10
    m_air_sec =1
    ! print*, Wa(m_eau, m_air_sec)  ! nous obtenons bien 10

    ! print*, Pv(Wa(m_eau, m_air_sec)), Psat(Ta0)
    print*, log((Pv(Wa(m_eau, m_air_sec))/Psat(Ta0))-1)
    print*, 2.31_PR*(Ta0-273+55.815_PR)*(10._PR**(-5))



    print*, Weq(m_eau/ m_air_sec)


    ! Wa = m_eau / m_air_sec *1._PR



    !nous avons Psat et le coefficient de diffusion qui sont environ égaux à 0

    ! Chaleur latente de vaporisation


    ! print*, RHO_air_sec


end program sechage
