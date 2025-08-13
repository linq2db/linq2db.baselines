BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	Substr('123', 2, :p)
FROM SYS.DUAL

