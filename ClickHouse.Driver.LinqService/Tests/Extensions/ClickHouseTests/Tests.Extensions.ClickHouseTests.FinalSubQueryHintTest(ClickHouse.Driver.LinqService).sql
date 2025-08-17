BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

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

