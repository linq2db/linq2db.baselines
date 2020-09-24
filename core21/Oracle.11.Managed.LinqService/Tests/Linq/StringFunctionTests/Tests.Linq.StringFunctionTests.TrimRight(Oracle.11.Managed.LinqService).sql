BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	RTrim('  ' || p.FirstName || ' ') = '  John' AND p.PersonID = 1

