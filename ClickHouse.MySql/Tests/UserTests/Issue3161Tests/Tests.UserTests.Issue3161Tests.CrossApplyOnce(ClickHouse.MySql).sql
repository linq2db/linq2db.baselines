BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1_1.NAME1,
	t1.Id2,
	t1.Name2
FROM
	TABLE1 t1_1
		LEFT JOIN (
			SELECT
				x.NAME2 as Name2,
				x.ID2 as Id2,
				ROW_NUMBER() OVER (PARTITION BY x.PARENTID2 ORDER BY x.PARENTID2) as rn,
				x.PARENTID2 as PARENTID2
			FROM
				TABLE2 x
		) t1 ON t1.PARENTID2 = t1_1.ID1 AND t1.rn <= 1

