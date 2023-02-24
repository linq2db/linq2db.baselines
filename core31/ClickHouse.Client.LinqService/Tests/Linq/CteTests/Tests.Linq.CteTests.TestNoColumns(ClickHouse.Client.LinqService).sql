BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE1_ AS
(
	SELECT
		t1.ParentID,
		t1.ChildID
	FROM
		Child t1
)
SELECT
	Count(*)
FROM
	CTE1_ t2

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE1_ AS
(
	SELECT
		c_1.ChildID
	FROM
		Child c_1
)
SELECT
	Count(*)
FROM
	CTE1_ t1

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE1_ AS
(
	SELECT
		c_1.ChildID
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
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

