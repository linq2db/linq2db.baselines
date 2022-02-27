BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = 'NaN'
DECLARE @dbl Double
SET     @dbl = 'NaN'

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = '-Infinity'
DECLARE @dbl Double
SET     @dbl = '-Infinity'

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @real_1 Real -- Single
SET     @real_1 = 'Infinity'
DECLARE @dbl Double
SET     @dbl = 'Infinity'

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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."realDataType",
	t1."doubleDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" >= 1000
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= 1000

