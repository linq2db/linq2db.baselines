BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	"SelectExpressionTable" t1
WHERE
	ROWNUM <= :take

