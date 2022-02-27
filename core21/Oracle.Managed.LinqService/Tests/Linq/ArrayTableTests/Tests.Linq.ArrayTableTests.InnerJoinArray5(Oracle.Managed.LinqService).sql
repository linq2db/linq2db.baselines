BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	n.c1,
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	(
		SELECT
			'Janet' as c1
		FROM SYS.DUAL
		UNION ALL
		SELECT
			'Doe' as c1
		FROM SYS.DUAL
		UNION ALL
		SELECT
			'John' as c1
		FROM SYS.DUAL
		UNION ALL
		SELECT
			'Doe' as c1
		FROM SYS.DUAL
	) n
		INNER JOIN Person p ON n.c1 = p.LastName

