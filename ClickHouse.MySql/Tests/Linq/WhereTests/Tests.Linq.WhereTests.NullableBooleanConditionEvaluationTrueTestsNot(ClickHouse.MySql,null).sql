BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Person t1
		)
			THEN true
		ELSE false
	END

