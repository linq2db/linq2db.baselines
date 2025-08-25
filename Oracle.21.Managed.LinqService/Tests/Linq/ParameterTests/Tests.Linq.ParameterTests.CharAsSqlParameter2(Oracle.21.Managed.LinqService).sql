BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @s1 Varchar2(7) -- String
SET     @s1 = chr(0) || ' ' || chr(0) || ' '' ' || chr(0)

SELECT
	:s1
FROM SYS.DUAL

