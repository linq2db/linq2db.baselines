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
			THEN toInt32(1)
		ELSE toInt32(0)
	END,
	CASE
		WHEN x.ParentID <> toInt32(0)
			THEN toInt32(1)
		ELSE toInt32(0)
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
			THEN toInt32(1)
		ELSE toInt32(0)
	END,
	NULL
FROM
	Parent x_1

