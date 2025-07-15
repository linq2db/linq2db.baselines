BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.value
FROM
	GENERATE_SERIES(1, 10) t1(value)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.value
FROM
	GENERATE_SERIES(1, 10, 2) t1(value)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @value Interval -- Object
SET     @value = 05:00:00

SELECT
	t1.value
FROM
	GENERATE_SERIES('2020-02-19 17:54:55.123'::timestamp, '2020-02-29 17:54:55.123'::timestamp, :value) t1(value)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-02-19 17:54:55.123'::timestamp
DECLARE @p_1 Interval -- Object
SET     @p_1 = 01:00:00

SELECT
	t1.value,
	t2.value,
	d.value
FROM
	GENERATE_SERIES(1, 10) t1(value)
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2(value) ON t2.value = t1.value OR t2.value IS NULL AND t1.value IS NULL
		CROSS JOIN GENERATE_SERIES(:p, '2020-02-29 17:54:55.123'::timestamp, :p_1) d(value)

