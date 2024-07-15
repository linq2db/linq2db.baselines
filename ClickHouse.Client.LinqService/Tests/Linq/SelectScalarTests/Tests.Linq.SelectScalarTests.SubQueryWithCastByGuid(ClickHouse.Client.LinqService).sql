BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT
			t1.ParentID as ParentID,
			t1.Value1 as Value1,
			(
				SELECT
					r.GuidValue
				FROM
					LinqDataTypes r
				LIMIT 1
			) as GuidValue
		FROM
			Parent t1
	) t2
WHERE
	t2.GuidValue IS NOT NULL

