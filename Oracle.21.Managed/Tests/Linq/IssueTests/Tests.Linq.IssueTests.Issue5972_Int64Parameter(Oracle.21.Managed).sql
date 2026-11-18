-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @min Int64
SET     @min = -9223372036854775808

SELECT
	:min
FROM SYS.DUAL

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @max Int64
SET     @max = 9223372036854775807

SELECT
	:max
FROM SYS.DUAL

