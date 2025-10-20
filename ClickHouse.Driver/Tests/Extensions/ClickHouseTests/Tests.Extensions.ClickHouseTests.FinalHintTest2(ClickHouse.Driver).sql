BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p
		CROSS JOIN ReplacingMergeTreeTable c_1 FINAL

