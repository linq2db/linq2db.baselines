BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT
				'Doe' as Item
			FROM SYS.DUAL
		) n ON p.LastName = n.Item

