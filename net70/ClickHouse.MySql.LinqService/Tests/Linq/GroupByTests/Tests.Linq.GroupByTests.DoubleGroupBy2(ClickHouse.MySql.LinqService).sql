BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	sumOrNull(t1.Max_1)
FROM
	(
		SELECT
			p.ParentID as ID,
			maxOrNull(p.Value1) as Max_1
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL
		GROUP BY
			p.ParentID
	) t1
GROUP BY
	t1.ID

