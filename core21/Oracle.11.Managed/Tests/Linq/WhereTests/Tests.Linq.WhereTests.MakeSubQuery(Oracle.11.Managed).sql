BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.PersonID + 1,
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1

