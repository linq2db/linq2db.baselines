BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p IntervalDS -- Object
SET     @p = 01:00:00

SELECT
	t1.ID
FROM
	"AllTypes" t1
WHERE
	CURRENT_TIMESTAMP > t1."datetime2DataType" + :p

