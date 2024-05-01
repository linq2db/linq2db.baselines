BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(p2."PersonID" * :ID) / 2,
	p2."FirstName"
FROM
	"Person" p2

