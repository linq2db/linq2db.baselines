BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 100

SELECT
	r."PersonID" as ID,
	r."PersonID" as "sort_1"
FROM
	"Person" r
GROUP BY
	r."PersonID",
	r."PersonID"
ORDER BY
	r."PersonID"
FETCH NEXT :take ROWS ONLY

