BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	Substr('123', 2, :p)
FROM SYS.DUAL

