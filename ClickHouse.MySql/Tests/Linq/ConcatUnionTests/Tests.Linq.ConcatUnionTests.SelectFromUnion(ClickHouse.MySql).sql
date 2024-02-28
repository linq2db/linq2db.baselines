BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ID,
	DENSE_RANK() OVER(ORDER BY t.ID)
FROM
	(
		SELECT
			p.PersonID as ID
		FROM
			Person p
		WHERE
			p.PersonID = toInt32(1)
		UNION ALL
		SELECT
			p_1.PersonID as ID
		FROM
			Person p_1
		WHERE
			p_1.PersonID <> toInt32(1)
	) t

