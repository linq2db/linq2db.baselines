BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = toInt32(1)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = toInt32(-1)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

