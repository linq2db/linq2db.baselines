BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END,
	CASE
		WHEN x.ParentID <> toInt32(0)
			THEN toUInt8(1)
		ELSE toUInt8(0)
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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END,
	NULL
FROM
	Parent x_1

