BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ID,
	p_1.TS
FROM
	(
		SELECT
			p.ID as ID,
			p.TS as TS
		FROM
			ReplacingMergeTreeTable p FINAL
	) p_1

