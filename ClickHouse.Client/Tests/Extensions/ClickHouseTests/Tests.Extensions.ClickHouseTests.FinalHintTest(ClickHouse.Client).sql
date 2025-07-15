BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL

