BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 10

SELECT
	t1
FROM
	GENERATE_SERIES(:p_1, :p_2) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 10
DECLARE @p_3 Integer -- Int32
SET     @p_3 = 2

SELECT
	t1
FROM
	GENERATE_SERIES(:p_1, :p_2, :p_3) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Timestamp -- DateTime
SET     @p_1 = '2020-02-19 17:54:55.123'::timestamp
DECLARE @p_2 Timestamp -- DateTime
SET     @p_2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p_3 Interval -- Object
SET     @p_3 = 05:00:00

SELECT
	t1
FROM
	GENERATE_SERIES(:p_1, :p_2, :p_3) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1
DECLARE @p_2 Integer -- Int32
SET     @p_2 = 10
DECLARE @p_3 Timestamp -- DateTime
SET     @p_3 = '2020-02-19 17:54:55.123'::timestamp
DECLARE @DateTime Timestamp -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p_4 Interval -- Object
SET     @p_4 = 01:00:00

SELECT
	t1_1,
	t2_1,
	d
FROM
	GENERATE_SERIES(:p_1, :p_2) t1_1
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2_1 ON (t2_1.* = t1_1.* OR t2_1.* IS NULL AND t1_1.* IS NULL),
	GENERATE_SERIES(:p_3, :DateTime, :p_4) d

