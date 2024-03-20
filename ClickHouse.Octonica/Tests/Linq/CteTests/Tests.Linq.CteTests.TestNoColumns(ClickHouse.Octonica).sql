BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

