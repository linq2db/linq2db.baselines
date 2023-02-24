BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person p
			WHERE
				p.PersonID IS NULL
		)
			THEN true
		ELSE false
	END

