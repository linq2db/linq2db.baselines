BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	1 as "c1"
FROM
	"Person" t1
FETCH NEXT :take ROWS ONLY

