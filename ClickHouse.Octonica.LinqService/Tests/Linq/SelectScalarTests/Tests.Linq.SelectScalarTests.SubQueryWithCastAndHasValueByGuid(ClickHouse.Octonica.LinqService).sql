BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID,
	_.Value1
FROM
	Parent _
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

