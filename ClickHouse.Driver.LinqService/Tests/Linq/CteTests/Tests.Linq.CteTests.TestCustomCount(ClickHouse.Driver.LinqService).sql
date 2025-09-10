BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

WITH CTE_1 AS
(
	SELECT
		1 as c1
	FROM
		Child c_1
	WHERE
		c_1.ParentID > 1
)
SELECT
	COUNT(*)
FROM
	CTE_1 c_2

