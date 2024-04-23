BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person _
			WHERE
				CASE
					WHEN _.FirstName = _.FirstName THEN true
					ELSE false
				END = CASE
					WHEN (_.MiddleName <> _.LastName OR _.MiddleName IS NULL)
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

