BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p
		CROSS JOIN ReplacingMergeTreeTable c_1 FINAL

