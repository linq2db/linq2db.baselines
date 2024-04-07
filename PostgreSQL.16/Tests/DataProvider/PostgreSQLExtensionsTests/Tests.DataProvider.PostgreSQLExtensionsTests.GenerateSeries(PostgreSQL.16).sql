BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 10

SELECT
	t1
FROM
	GENERATE_SERIES(:p, :p_1) t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 10
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 2

SELECT
	t1
FROM
	GENERATE_SERIES(:p, :p_1, :p_2) t1

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
DECLARE @p Integer -- Int32
SET     @p = 1
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 10
DECLARE @p_2 Timestamp -- DateTime2
SET     @p_2 = '2020-02-19 17:54:55.123'::timestamp
DECLARE @DateTime Timestamp -- DateTime2
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p_3 Interval -- Object
SET     @p_3 = 01:00:00

SELECT
	t1,
	t2,
	d
FROM
	GENERATE_SERIES(:p, :p_1) t1
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2 ON (t2.* = t1.* OR t2.* IS NULL AND t1.* IS NULL),
	GENERATE_SERIES(:p_2, :DateTime, :p_3) d

