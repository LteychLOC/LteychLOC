module appendices_mod
    use constantes_mod

    implicit none

    ! real(PR) :: m_eau, m_air_sec ! masse d'eau et d'air sec

    contains
        function Wa(m_eau, m_air_sec) result(res) !teneur en eau en g/kg d'air sec.
            real(PR), intent(in)     :: m_eau, m_air_sec
            real(PR)                 :: res
            res = m_eau / m_air_sec *1._PR
        end function




end module  appendices_mod
