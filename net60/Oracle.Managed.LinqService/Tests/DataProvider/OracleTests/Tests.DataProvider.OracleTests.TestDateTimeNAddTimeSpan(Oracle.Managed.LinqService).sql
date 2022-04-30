BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 IntervalDS -- Object
SET     @p_1 = 01:00:00

SELECT
	t1.ID
FROM
	"AllTypes" t1
WHERE
	CURRENT_TIMESTAMP > t1."datetime2DataType" + :p_1

