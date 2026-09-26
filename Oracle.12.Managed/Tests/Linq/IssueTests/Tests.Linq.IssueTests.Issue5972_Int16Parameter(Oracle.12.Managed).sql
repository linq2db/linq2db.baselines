-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @min Int16
SET     @min = -32768

SELECT
	:min
FROM SYS.DUAL

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @max Int16
SET     @max = 32767

SELECT
	:max
FROM SYS.DUAL

