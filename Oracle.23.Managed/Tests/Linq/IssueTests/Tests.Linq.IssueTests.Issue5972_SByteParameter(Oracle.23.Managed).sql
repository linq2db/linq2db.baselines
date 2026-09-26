-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @min Int16
SET     @min = -128

SELECT
	:min
FROM SYS.DUAL

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @max Int16
SET     @max = 127

SELECT
	:max
FROM SYS.DUAL

