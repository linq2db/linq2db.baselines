BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = NULL
DECLARE @p Int32
SET     @p = 0

SELECT
	:value,
	:p
FROM SYS.DUAL

