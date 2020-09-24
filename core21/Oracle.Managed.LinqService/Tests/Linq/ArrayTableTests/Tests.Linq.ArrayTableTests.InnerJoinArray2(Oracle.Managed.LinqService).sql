BeforeExecute
-- Oracle.Managed Oracle12

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
		) t1 ON p.LastName = t1.c1

