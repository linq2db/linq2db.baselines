-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	a."PersonID" as ID,
	a."PersonID" as "Id2"
FROM
	"Person" a
FETCH NEXT :take ROWS ONLY

