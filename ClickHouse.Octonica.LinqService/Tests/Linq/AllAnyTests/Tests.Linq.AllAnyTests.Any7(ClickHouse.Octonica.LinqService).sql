BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Child t1
	)

