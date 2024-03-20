BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				CASE
					WHEN _.FirstName = _.FirstName
						THEN toUInt8(1)
					ELSE toUInt8(0)
				END <> CASE
					WHEN _.MiddleName <> _.LastName
						THEN toUInt8(1)
					ELSE toUInt8(0)
				END
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

