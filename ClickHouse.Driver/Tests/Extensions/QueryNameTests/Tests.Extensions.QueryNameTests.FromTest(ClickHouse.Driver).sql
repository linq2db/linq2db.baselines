-- ClickHouse.Driver ClickHouse

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT /* PARENT */
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			Parent t1
	) t2,
	(
		SELECT /* CHILD */
			c_1.ParentID as ParentID
		FROM
			Child c_1
	) c_2
WHERE
	t2.ParentID = c_2.ParentID

