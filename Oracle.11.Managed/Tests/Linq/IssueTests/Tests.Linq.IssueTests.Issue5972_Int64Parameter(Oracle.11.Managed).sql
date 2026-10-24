-- Oracle.11.Managed Oracle11
DECLARE @min Int64
SET     @min = -9223372036854775808

SELECT
	:min
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
DECLARE @max Int64
SET     @max = 9223372036854775807

SELECT
	:max
FROM SYS.DUAL

