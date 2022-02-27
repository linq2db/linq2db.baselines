BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.PersonID,
	Nvl(p.FirstName, 'None'),
	Nvl(p.MiddleName, 'None')
FROM
	Person p
WHERE
	p.PersonID = 1

