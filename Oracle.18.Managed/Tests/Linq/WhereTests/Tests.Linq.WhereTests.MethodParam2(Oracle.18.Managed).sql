-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @t Int32
SET     @t = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :t

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @t Int32
SET     @t = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :t

