BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	t1."PersonID" as ID,
	t1."PersonID" as "sort_1"
FROM
	"Person" t1
GROUP BY
	t1."PersonID",
	t1."PersonID"
ORDER BY
	t1."PersonID"
FETCH NEXT :take ROWS ONLY

