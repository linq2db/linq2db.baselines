BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = NULL
DECLARE @p Int32
SET     @p = 0

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE 4
	END
FROM SYS.DUAL

