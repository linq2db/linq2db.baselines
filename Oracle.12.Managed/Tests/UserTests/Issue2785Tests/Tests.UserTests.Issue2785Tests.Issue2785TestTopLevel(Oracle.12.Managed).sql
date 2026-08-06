-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	a."PersonID",
	a."PersonID" as "Id2_1"
FROM
	"Person" a
FETCH NEXT :take ROWS ONLY

