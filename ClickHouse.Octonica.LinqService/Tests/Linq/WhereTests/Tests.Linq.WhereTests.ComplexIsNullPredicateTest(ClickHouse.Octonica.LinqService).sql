BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value
FROM
	ComplexPredicate r
WHERE
	CASE
		WHEN r.Value = '123' THEN true
		ELSE false
	END = CASE
		WHEN r.Value = '1' OR r.Value = 'test' AND (r.Value <> '1' OR r.Value IS NULL)
			THEN true
		ELSE false
	END
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	ComplexPredicate t1

