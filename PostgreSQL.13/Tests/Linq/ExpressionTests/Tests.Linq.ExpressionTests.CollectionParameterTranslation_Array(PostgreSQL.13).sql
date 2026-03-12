-- PostgreSQL.13 PostgreSQL
DECLARE @ids -2147483639 -- Object
SET     @ids = {10,20}

DELETE FROM
	"Person" p
WHERE
	p."PersonID" = ANY(:ids)

