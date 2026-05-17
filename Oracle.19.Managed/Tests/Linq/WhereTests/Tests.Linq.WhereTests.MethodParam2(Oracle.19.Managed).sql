-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :p

