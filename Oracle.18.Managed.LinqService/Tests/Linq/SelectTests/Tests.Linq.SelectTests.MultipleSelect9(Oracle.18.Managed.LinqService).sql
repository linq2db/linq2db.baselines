BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2

SELECT
	(p2."PersonID" * :ID) / 2,
	p2."FirstName"
FROM
	"Person" p2

