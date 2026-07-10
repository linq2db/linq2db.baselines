-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	p."PersonID",
	d."PersonID"
FROM
	"Person" p
		INNER JOIN "Doctor" d ON p."PersonID" = d."PersonID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	p."PersonID",
	d."PersonID"
FROM
	"Person" p
		INNER JOIN "Doctor" d ON p."PersonID" = d."PersonID"

