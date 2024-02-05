BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ID,
	p.TS
FROM
	ReplacingMergeTreeTable p FINAL
UNION DISTINCT
SELECT
	t2.ID,
	t2.TS
FROM
	(
		SELECT
			p_1.ID as ID,
			p_1.TS as TS
		FROM
			ReplacingMergeTreeTable p_1,
			(
				SELECT
					*
				FROM
					ReplacingMergeTreeTable t1
			) c_1 FINAL
	) t2
SETTINGS convert_query_to_cnf=false

