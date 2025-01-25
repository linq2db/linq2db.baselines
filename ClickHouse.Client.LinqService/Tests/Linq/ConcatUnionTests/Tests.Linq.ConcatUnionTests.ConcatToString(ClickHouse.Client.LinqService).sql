BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName
FROM
	(
		SELECT
			p.FirstName as FirstName
		FROM
			Person p
		WHERE
			p.FirstName LIKE '1'
		UNION ALL
		SELECT
			p_1.FirstName as FirstName
		FROM
			Person p_1
		WHERE
			position(toString(p_1.PersonID), '1') > 0
	) t1
LIMIT 10

