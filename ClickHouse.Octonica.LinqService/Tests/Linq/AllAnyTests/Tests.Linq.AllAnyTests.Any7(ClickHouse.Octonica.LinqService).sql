BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				Child t1
		) THEN true
		ELSE false
	END

