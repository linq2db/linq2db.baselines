BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)

