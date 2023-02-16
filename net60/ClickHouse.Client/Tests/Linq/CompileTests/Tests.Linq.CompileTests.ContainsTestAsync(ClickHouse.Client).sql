BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN toInt32(1) IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	CASE
		WHEN toInt32(-1) IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

