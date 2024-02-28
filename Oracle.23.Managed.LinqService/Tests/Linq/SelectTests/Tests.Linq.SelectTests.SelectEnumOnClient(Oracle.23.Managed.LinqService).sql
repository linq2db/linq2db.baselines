BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	person_1."PersonID" as ID
FROM
	"Person" person_1
FETCH NEXT :take ROWS ONLY

