BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = (p."LastName" || ', ' || p."FirstName") AND
	'<' || p."LastName" || ', ' || p."FirstName" || '>' = ('<' || p."LastName" || ', ' || p."FirstName") || '>' AND
	'<' || p."LastName" || p."FirstName" || '>' = ('<' || p."LastName" || p."FirstName") || '>' AND
	('<{p.LastName}, ' || p."FirstName" || ' {' || p."LastName" || '}>') = ('<{p.LastName}, ' || p."FirstName" || ' {' || p."LastName") || '}>' AND
	'{}' || p."LastName" = '{}' || p."LastName"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Count(*)
FROM
	"Person" t1

