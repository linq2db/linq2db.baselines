-- Oracle.11.Managed Oracle11
DECLARE @min Int16
SET     @min = -128

SELECT
	:min
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11
DECLARE @max Int16
SET     @max = 127

SELECT
	:max
FROM SYS.DUAL

