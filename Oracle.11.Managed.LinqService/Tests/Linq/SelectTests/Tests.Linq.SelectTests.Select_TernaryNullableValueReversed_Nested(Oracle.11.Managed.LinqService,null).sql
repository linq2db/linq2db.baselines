BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = NULL
DECLARE @p Int32
SET     @p = 0

SELECT
	:value,
	:p
FROM SYS.DUAL

