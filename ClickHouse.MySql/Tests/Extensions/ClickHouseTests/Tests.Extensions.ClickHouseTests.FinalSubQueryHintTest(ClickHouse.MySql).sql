BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p
		CROSS JOIN (
			SELECT
				1 as c1
			FROM
				ReplacingMergeTreeTable c_1 FINAL
		) c_2

