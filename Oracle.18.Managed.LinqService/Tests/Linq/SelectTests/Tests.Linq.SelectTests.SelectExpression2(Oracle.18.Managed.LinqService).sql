BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	1 as "cond"
FROM
	"SelectExpressionTable" t1
FETCH NEXT :take ROWS ONLY

