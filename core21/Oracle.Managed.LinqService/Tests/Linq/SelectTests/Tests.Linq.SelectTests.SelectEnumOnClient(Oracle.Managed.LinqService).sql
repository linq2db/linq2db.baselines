BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	person_1."PersonID"
FROM
	"Person" person_1
FETCH NEXT :take ROWS ONLY

