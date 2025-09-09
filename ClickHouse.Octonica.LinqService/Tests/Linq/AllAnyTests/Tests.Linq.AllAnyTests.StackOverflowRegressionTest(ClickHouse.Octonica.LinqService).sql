BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
	)

