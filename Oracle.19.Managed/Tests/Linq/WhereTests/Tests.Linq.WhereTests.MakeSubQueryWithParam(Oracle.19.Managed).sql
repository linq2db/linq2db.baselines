BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @n Int32
SET     @n = 1

SELECT
	(p."PersonID" + :ID) - 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

