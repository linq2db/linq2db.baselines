-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @s1 Varchar2(7) -- String
SET     @s1 = '0 ' || chr(0) || ' '' 0'

SELECT
	:s1
FROM SYS.DUAL

