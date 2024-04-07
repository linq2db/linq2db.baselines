BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		)
			THEN true
		ELSE false
	END,
	CASE
		WHEN x.ParentID <> toInt32(0)
			THEN true
		ELSE false
	END
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
		)
			THEN true
		ELSE false
	END,
	NULL
FROM
	Parent x_1

