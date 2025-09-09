BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL

