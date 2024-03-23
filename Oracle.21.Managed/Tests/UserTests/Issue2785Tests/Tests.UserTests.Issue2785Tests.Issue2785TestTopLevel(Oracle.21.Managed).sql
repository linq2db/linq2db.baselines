BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	a."PersonID" as ID,
	a."PersonID" as ID_1
FROM
	"Person" a
FETCH NEXT :take ROWS ONLY

