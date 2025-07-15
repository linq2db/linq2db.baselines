BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)

