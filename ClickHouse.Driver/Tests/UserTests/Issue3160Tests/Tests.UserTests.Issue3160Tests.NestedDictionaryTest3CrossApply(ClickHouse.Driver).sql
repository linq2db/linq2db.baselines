BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t2.cond_1,
	t2.cond,
	t2.Id3,
	t2.Name3,
	t2.Name2,
	t1_1.NAME1
FROM
	TABLE1 t1_1
		LEFT JOIN (
			SELECT
				t1.c1 as cond,
				t1.Id3 as Id3,
				t1.Name3 as Name3,
				't2' as cond_1,
				x_1.NAME2 as Name2,
				ROW_NUMBER() OVER (PARTITION BY x_1.PARENTID2 ORDER BY x_1.PARENTID2) as rn,
				x_1.PARENTID2 as PARENTID2
			FROM
				TABLE2 x_1
					LEFT JOIN (
						SELECT
							x.ID3 as Id3,
							x.NAME3 as Name3,
							't3' as c1,
							ROW_NUMBER() OVER (PARTITION BY x.PARENTID3 ORDER BY x.PARENTID3) as rn,
							x.PARENTID3 as PARENTID3
						FROM
							TABLE3 x
					) t1 ON t1.PARENTID3 = x_1.ID2 AND t1.rn <= 1
		) t2 ON t2.PARENTID2 = t1_1.ID1 AND t2.rn <= 1

