-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @min Int32
SET     @min = -2147483648

SELECT
	:min
FROM SYS.DUAL

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @max Int32
SET     @max = 2147483647

SELECT
	:max
FROM SYS.DUAL

