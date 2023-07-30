BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID

