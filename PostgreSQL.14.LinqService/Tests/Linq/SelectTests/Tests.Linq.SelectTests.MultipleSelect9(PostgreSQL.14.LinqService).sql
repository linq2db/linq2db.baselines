BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(p5."PersonID" * LENGTH('22')) / 2,
	p5."FirstName"
FROM
	"Person" p5

