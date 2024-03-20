BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

