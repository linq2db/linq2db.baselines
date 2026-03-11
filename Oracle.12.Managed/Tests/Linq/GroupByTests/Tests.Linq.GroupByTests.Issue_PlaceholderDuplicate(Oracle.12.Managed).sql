-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	r."PersonID" as ID
FROM
	"Person" r
ORDER BY
	r."PersonID"
FETCH NEXT :take ROWS ONLY

