BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	c_2.COUNT_1
FROM
	(
		SELECT
			c_1.ParentID as Key_1,
			COUNT(*) as COUNT_1
		FROM
			Child c_1
		GROUP BY
			c_1.ParentID
		HAVING
			c_1.ParentID > 1
	) c_2
WHERE
	c_2.Key_1 > 1 AND c_2.COUNT_1 > 1

