BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = (p."LastName" || ', ' || p."FirstName") AND '<' || p."LastName" || ', ' || p."FirstName" || '>' = ('<' || p."LastName" || ', ' || p."FirstName") || '>' AND '<' || p."LastName" || p."FirstName" || '>' = ('<' || p."LastName" || p."FirstName") || '>' AND ('<{p.LastName}, ' || p."FirstName" || ' {' || p."LastName" || '}>') = ('<{p.LastName}, ' || p."FirstName" || ' {' || p."LastName") || '}>' AND '{}' || p."LastName" = '{}' || p."LastName"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" t1

