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
					WHEN _.MiddleName = '123' THEN true
					ELSE false
				END = CASE
					WHEN CASE
						WHEN _.MiddleName = '1' THEN 'test'
						ELSE _.MiddleName
					END = 'test'
						THEN true
					ELSE false
				END
		)
			THEN true
		ELSE false
	END

