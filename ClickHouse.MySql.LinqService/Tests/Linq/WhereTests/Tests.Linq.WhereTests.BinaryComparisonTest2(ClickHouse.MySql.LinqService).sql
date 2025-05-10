BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			NOT (t1.MiddleName <> t1.LastName OR t1.MiddleName IS NULL)
	)

