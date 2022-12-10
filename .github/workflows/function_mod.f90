module function_mod

    use constantes_mod
    use appendices_mod

    implicit none


    contains
        function RHO_air_humide(Wa, Ta) result(res)
            real(PR), intent(in)     :: Ta, Wa
            real(PR)                 :: res
            res = alpha * ((1._PR+Wa)/(beta+ Wa)*Ta)
        end function

        function RHO_air_sec(Ta0, Hra0) result(res) ! masse volumique de l'air sec
            real(PR), intent(in)     :: Ta0, Hra0
            real(PR)                 :: res
            res = (10**(5) - Psat(Ta0)* Hra0*10**(-2)) / (287.1 * Ta0)
        end function

        function Lv(Tp) result(res)  ! chaleur latente de vaporisation
            real(PR), intent(in)     :: Tp
            real(PR)                 :: res

            res = 1000*(A5*(Tp - 273)**5 + A4 *(Tp -273)**4 + A3*(Tp-273)**3+ &
            & A2*(Tp -273)**2 + A1 * (Tp-273) +A0)
        end function

        function Weq(Wa) result(res)  ! elle fonctionne
            real(PR), intent(in)     :: Wa
            real(PR)                 :: res
            res= 0.01_PR *(log(-1._PR +(Pv(Wa)/Psat(Ta0)))/ &
            &2.31_PR*(Ta0-273+55.815_PR)*(10._PR**(-5)))**(1/2.29_PR)
            !invertion signe dans le log car log négatif impossible

        end function

        function Pv(Wa) result(res)
            real(PR), intent(in)     :: Wa
            real(PR)                 :: res
            res = (100000._PR *Wa)/(Wa + 0.622_PR)
        end function


        function Psat(Ta) result (res) ! Pression saturante
            real(PR), intent(in)     :: Ta
            real(PR)                 :: res
            res = exp(54.119_PR - 6547.1_PR/Ta - 4.23_PR * log(Ta))
        end function

        function D(Tp) result (res)  ! coefficient de diffusion
            real(PR), intent(in)     :: Tp
            real(PR)                 :: res
            res = 7.68E-3 * exp(-51080 * 1._PR/8.314* Tp)
        end function








    ! inconnues sont Tp, Ta, Wp, Wa (teneur en eau)

end module
