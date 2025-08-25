BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	) as a,
	x.ParentID <> 0 as b
FROM
	Parent x
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t2
	) as a,
	toBool(NULL) as b
FROM
	Parent x_1

