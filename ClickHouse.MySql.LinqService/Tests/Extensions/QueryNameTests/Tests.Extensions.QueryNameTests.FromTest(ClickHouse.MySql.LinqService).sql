BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	(
		SELECT /* PARENT */
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
	) t1,
	(
		SELECT /* CHILD */
			c_1.ParentID as ParentID
		FROM
			Child c_1
	) c_2
WHERE
	t1.ParentID = c_2.ParentID

