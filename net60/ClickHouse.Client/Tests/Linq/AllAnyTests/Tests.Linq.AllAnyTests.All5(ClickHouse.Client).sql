BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= toInt32(3)
		))
			THEN toInt32(1)
		ELSE toInt32(0)
	END

