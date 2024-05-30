BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	a."PersonID",
	a."PersonID"
FROM
	"Person" a
WHERE
	ROWNUM <= :take

