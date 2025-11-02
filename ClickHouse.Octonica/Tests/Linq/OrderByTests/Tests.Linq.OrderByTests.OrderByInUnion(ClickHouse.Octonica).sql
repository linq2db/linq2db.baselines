-- ClickHouse.Octonica ClickHouse

SELECT
	t2.ParentID,
	t2.ChildID
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.ChildID as ChildID
		FROM
			Child t1
		ORDER BY
			t1.ChildID
	) t2
UNION ALL
SELECT
	t4.ParentID as ParentID,
	t4.ChildID as ChildID
FROM
	(
		SELECT
			t3.ParentID as ParentID,
			t3.ChildID as ChildID
		FROM
			Child t3
		ORDER BY
			t3.ChildID DESC
	) t4

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
UNION ALL
SELECT
	t3.ParentID as ParentID,
	t3.ChildID as ChildID
FROM
	(
		SELECT
			t2.ParentID as ParentID,
			t2.ChildID as ChildID
		FROM
			Child t2
		ORDER BY
			t2.ChildID DESC
	) t3

-- ClickHouse.Octonica ClickHouse

SELECT
	t3.ParentID,
	t3.ChildID
FROM
	(
		SELECT
			t1.ChildID as ChildID,
			t1.ParentID as ParentID
		FROM
			Child t1
		UNION ALL
		SELECT
			t2.ChildID as ChildID,
			t2.ParentID as ParentID
		FROM
			Child t2
	) t3
ORDER BY
	t3.ChildID

