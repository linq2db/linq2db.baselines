BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 1
DECLARE @p Int32
SET     @p = 1
DECLARE @p_1 Int32
SET     @p_1 = 5

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE :p_1
	END
FROM SYS.DUAL

