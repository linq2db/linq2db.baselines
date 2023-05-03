BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p,
	(
		SELECT
			*
		FROM
			ReplacingMergeTreeTable t1
	) c_1 FINAL

