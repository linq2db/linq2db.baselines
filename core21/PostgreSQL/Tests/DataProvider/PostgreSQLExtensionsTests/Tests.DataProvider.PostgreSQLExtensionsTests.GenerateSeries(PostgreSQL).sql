BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 1
DECLARE @p2 Integer -- Int32
SET     @p2 = 10

SELECT 
	t1
FROM
	GENERATE_SERIES(:p1, :p2) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 1
DECLARE @p2 Integer -- Int32
SET     @p2 = 10
DECLARE @p3 Integer -- Int32
SET     @p3 = 2

SELECT 
	t1
FROM
	GENERATE_SERIES(:p1, :p2, :p3) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Timestamp -- DateTime
SET     @p1 = '2020-02-19 17:54:55.123'::timestamp
DECLARE @p2 Timestamp -- DateTime
SET     @p2 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p3 Interval -- Object
SET     @p3 = 05:00:00

SELECT 
	t1
FROM
	GENERATE_SERIES(:p1, :p2, :p3) t1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 1
DECLARE @p2 Integer -- Int32
SET     @p2 = 10
DECLARE @p3 Timestamp -- DateTime
SET     @p3 = '2020-02-19 17:54:55.123'::timestamp
DECLARE @DateTime_1 Timestamp -- DateTime
SET     @DateTime_1 = '2020-02-29 17:54:55.123'::timestamp
DECLARE @p4 Interval -- Object
SET     @p4 = 01:00:00

SELECT 
	t1_1, 
	t2_1, 
	d
FROM
	GENERATE_SERIES(:p1, :p2) t1_1
		LEFT JOIN GENERATE_SERIES(1, 10, 2) t2_1 ON (t2_1.* IS NULL AND t1_1.* IS NULL OR t2_1.* = t1_1.*),
	GENERATE_SERIES(:p3, :DateTime_1, :p4) d

