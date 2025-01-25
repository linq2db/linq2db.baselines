BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int32
SET     @value = 1
DECLARE @p Int32
SET     @p = 1

SELECT
	:value,
	:p
FROM SYS.DUAL

