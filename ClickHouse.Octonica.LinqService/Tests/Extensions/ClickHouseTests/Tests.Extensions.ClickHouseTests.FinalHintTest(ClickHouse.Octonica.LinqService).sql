BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL

