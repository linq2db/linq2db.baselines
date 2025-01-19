BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.F066_04 as Description,
	t1.F066_05,
	t1.F066_00
FROM
	M998_T066 t1
UNION ALL
SELECT
	t2.F066_04 as Description,
	t2.F066_05 as F066_05,
	t2.F066_00 as F066_00
FROM
	M998_T000 t2

