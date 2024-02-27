BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 1
DECLARE @p Int32
SET     @p = 1

SELECT
	:value,
	CASE
		WHEN :p < 2 THEN :p
		ELSE :p + 4
	END
FROM SYS.DUAL

