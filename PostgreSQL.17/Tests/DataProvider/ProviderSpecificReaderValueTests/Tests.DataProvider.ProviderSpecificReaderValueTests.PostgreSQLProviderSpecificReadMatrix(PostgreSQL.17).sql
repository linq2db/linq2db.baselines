-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(true AS boolean)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(true AS boolean)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(123 AS integer)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(123 AS integer)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1234567890123 AS bigint)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1234567890123 AS bigint)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(123.45 AS numeric(10,2))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(123.45 AS numeric(10,2))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1.25 AS real)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1.25 AS real)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1.25 AS double precision)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST(1.25 AS double precision)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('text' AS varchar(10))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('text' AS varchar(10))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('2024-01-02' AS date)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('2024-01-02' AS date)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('03:04:05.123456' AS time)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('03:04:05.123456' AS time)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('2024-01-02 03:04:05.123456' AS timestamp)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('2024-01-02 03:04:05.123456' AS timestamp)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('1 day 02:03:04.123456' AS interval)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('1 day 02:03:04.123456' AS interval)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('\x3039' AS bytea)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('\x3039' AS bytea)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('01234567-89ab-cdef-0123-456789abcdef' AS uuid)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('01234567-89ab-cdef-0123-456789abcdef' AS uuid)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('1.2.3.4' AS inet)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('1.2.3.4' AS inet)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT point(1, 2)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT point(1, 2)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT lseg(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT lseg(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT box(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT box(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('[(1,2),(3,4)]' AS path)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('[(1,2),(3,4)]' AS path)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('((1,2),(3,4),(5,6))' AS polygon)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT CAST('((1,2),(3,4),(5,6))' AS polygon)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT circle(point(1,2), 3)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT circle(point(1,2), 3)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT line(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT line(point(1,2), point(3,4))

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT int4range(1, 5, '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT int4range(1, 5, '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT numrange(1.1, 5.5, '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT numrange(1.1, 5.5, '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT daterange(date '2024-01-01', date '2024-02-01', '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT daterange(date '2024-01-01', date '2024-02-01', '[)')

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT ARRAY[1,2,3]::integer[]

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT ARRAY[1,2,3]::integer[]

