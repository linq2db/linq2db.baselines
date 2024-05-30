BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		t1.ParentID,
		t1.ChildID
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		c_1.ChildID as C_ChildID
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE1_ AS
(
	SELECT
		*
	FROM
		Child c_1
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				CTE1_ t1
		) THEN true
		ELSE false
	END

