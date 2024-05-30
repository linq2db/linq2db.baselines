BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1
FROM
	GENERATE_SERIES(1, 10) t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1
FROM
	GENERATE_SERIES(1, 10, 2) t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-02-19 17:54:55.123'::timestamp
DECLARE @p_1 Timestamp -- DateTime2
SET     @p_1 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p_2 Interval -- Object
SET     @p_2 = 05:00:00

SELECT
	t1
FROM
	GENERATE_SERIES(:p, :p_1, :p_2) t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Timestamp -- DateTime2
SET     @p = '2020-02-19 17:54:55.123'::timestamp
DECLARE @DateTime Timestamp -- DateTime2
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p_1 Interval -- Object
SET     @p_1 = 01:00:00

SELECT
	t1,
	t2,
	d
FROM
	GENERATE_SERIES(1, 10) t1
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2 ON t2 = t1
		CROSS JOIN GENERATE_SERIES(:p, :DateTime, :p_1) d

