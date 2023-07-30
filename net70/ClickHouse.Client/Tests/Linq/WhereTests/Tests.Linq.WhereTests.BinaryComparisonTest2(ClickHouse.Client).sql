BeforeExecute
-- ClickHouse.Client ClickHouse

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
						THEN true
					ELSE false
				END <> CASE
					WHEN _.MiddleName <> _.LastName
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

