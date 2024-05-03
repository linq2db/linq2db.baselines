BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 0
DECLARE @p Int32
SET     @p = 0

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE 2
	END
FROM SYS.DUAL

