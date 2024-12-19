﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Child t1

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

WITH CTE1_ AS
(
	SELECT
		1 as c1
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

