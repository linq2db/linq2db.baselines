BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
WHERE
	(
		SELECT
			CASE
				WHEN r.GuidValue IS NOT NULL THEN true
				ELSE false
			END
		FROM
			LinqDataTypes r
		LIMIT 1
	) = true

