BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	(
		SELECT
			t1.ID as ID,
			t1.TS as TS
		FROM
			ReplacingMergeTreeTable t1 FINAL
	) p

