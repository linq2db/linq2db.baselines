BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
			WHERE
				c_1.ParentID > 0
			ORDER BY
				c_1.ParentID
			LIMIT 1
		) IS NULL
			THEN 0
		ELSE (
			SELECT
				c_2.ParentID
			FROM
				Child c_2
			WHERE
				c_2.ParentID > 0
			ORDER BY
				c_2.ParentID
			LIMIT 1
		)
	END,
	(
		SELECT
			c_3.ParentID
		FROM
			Child c_3
		WHERE
			c_3.ChildID > -100
		ORDER BY
			c_3.ParentID
		LIMIT 1
	),
	(
		SELECT
			c_4.ChildID
		FROM
			Child c_4
		WHERE
			c_4.ChildID > -100
		ORDER BY
			c_4.ParentID
		LIMIT 1
	)
FROM
	Parent p
ORDER BY
	p.ParentID

