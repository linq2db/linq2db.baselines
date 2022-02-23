﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = 'NaN'::float4
DECLARE @dbl Double
SET     @dbl = 'NaN'::float8

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1000,
	:real_1,
	:dbl
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = '-Infinity'::float4
DECLARE @dbl Double
SET     @dbl = '-Infinity'::float8

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1001,
	:real_1,
	:dbl
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = 'Infinity'::float4
DECLARE @dbl Double
SET     @dbl = 'Infinity'::float8

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1002,
	:real_1,
	:dbl
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @maxID Integer -- Int32
SET     @maxID = 2

SELECT
	t1."realDataType",
	t1."doubleDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxID
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @maxID Integer -- Int32
SET     @maxID = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :maxID

