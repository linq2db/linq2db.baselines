BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

