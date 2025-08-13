BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				t1.PersonID
			FROM
				Person t1
		)
			THEN true
		ELSE false
	END

