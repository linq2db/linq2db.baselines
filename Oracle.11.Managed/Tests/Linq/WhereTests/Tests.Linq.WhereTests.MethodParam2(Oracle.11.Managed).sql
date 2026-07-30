-- Oracle.11.Managed Oracle11
DECLARE @t Int32
SET     @t = 1

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :t

-- Oracle.11.Managed Oracle11
DECLARE @t Int32
SET     @t = 2

SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."PersonID" = :t

