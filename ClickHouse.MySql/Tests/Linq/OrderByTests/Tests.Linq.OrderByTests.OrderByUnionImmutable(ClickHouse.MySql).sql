BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ChildID,
	t1.ParentID,
	CASE
		WHEN t1.c1 IS NOT NULL THEN t1.c1
		ELSE t1.c2
	END
FROM
	(
		SELECT
			ch.ChildID as ChildID,
			ch.ParentID as ParentID,
			toInt8(toInt8(1)) as c1,
			toInt32(NULL) as c2
		FROM
			Child ch
		UNION ALL
		SELECT
			ch_1.ChildID as ChildID,
			ch_1.ParentID as ParentID,
			toInt8(NULL) as c1,
			toInt32(2) as c2
		FROM
			Child ch_1
	) t1
ORDER BY
	CASE
		WHEN t1.c1 IS NOT NULL THEN t1.c1
		ELSE t1.c2
	END

