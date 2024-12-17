BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Person t1
			WHERE
				(1 = 1) = (t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL)
		)
			THEN true
		ELSE false
	END

