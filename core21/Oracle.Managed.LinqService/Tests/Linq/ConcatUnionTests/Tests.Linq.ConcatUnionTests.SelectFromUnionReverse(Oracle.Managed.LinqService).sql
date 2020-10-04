BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	DENSE_RANK() OVER(ORDER BY t.ID),
	t.ID
FROM
	(
		SELECT
			p.PersonID as ID
		FROM
			Person p
		WHERE
			p.PersonID = 1
		UNION ALL
		SELECT
			p_1.PersonID as ID
		FROM
			Person p_1
		WHERE
			p_1.PersonID <> 1
	) t

