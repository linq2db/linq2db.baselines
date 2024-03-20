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
	END

