BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p
		CROSS JOIN (
			SELECT
				*
			FROM
				ReplacingMergeTreeTable c_1 FINAL
		) c_2

