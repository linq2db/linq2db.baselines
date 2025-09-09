BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child t1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t2

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child c_1
)
SELECT
	COUNT(*)
FROM
	CTE1_ t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

WITH CTE1_ AS
(
	SELECT
		1 as c1
	FROM
		Child c_1
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			CTE1_ t1
	)

