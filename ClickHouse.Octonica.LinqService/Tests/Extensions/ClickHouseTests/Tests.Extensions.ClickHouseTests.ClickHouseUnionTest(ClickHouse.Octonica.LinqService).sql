BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL
UNION DISTINCT
SELECT
	t1.ID as ID,
	t1.TS as TS
FROM
	ReplacingMergeTreeTable t1
		CROSS JOIN (
			SELECT
				*
			FROM
				ReplacingMergeTreeTable c_1 FINAL
		) c_2
SETTINGS convert_query_to_cnf=false

