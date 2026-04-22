-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @start Integer -- Int32
SET     @start = 1
DECLARE @stop Integer -- Int32
SET     @stop = 10

SELECT
	t1.value
FROM
	GENERATE_SERIES(:start, :stop) t1(value)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @start Integer -- Int32
SET     @start = 1
DECLARE @stop Integer -- Int32
SET     @stop = 10
DECLARE @step Integer -- Int32
SET     @step = 2

SELECT
	t1.value
FROM
	GENERATE_SERIES(:start, :stop, :step) t1(value)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @start Timestamp -- DateTime2
SET     @start = '2020-02-19 17:54:55.123'::timestamp
DECLARE @stop Timestamp -- DateTime2
SET     @stop = '2020-02-29 17:54:55.123'::timestamp
DECLARE @step Interval -- Object
SET     @step = 05:00:00

SELECT
	t1.value
FROM
	GENERATE_SERIES(:start, :stop, :step) t1(value)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @start Integer -- Int32
SET     @start = 1
DECLARE @stop Integer -- Int32
SET     @stop = 10
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-02-19 17:54:55.123'::timestamp
DECLARE @p_1 Interval -- Object
SET     @p_1 = 01:00:00

SELECT
	t1.value,
	t2.value,
	d.value
FROM
	GENERATE_SERIES(:start, :stop) t1(value)
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2(value) ON t2.value = t1.value OR t2.value IS NULL AND t1.value IS NULL
		CROSS JOIN GENERATE_SERIES(:p, '2020-02-29 17:54:55.123'::timestamp, :p_1) d(value)

