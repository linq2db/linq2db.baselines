-- ClickHouse.MySql ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL

