BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 0
DECLARE @p Int32
SET     @p = 0

SELECT
	:value,
	CASE
		WHEN :p < 2 THEN :p
		ELSE :p + 4
	END
FROM SYS.DUAL

