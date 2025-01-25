BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		) THEN true
		ELSE false
	END as a,
	CASE
		WHEN x.ParentID <> 0 THEN true
		ELSE false
	END as b
FROM
	Parent x
UNION ALL
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t2
		) THEN true
		ELSE false
	END as a,
	toBool(NULL) as b
FROM
	Parent x_1

