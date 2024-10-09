BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN t1.ChildID = 21 THEN true
		ELSE false
	END,
	t1.ChildID,
	CASE
		WHEN t1.ChildID = 11 THEN true
		ELSE false
	END
FROM
	Child t1
WHERE
	t1.ChildID = 11 OR t1.ChildID = 21

