BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1000,
	'NaN'::float4,
	'NaN'::float8
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1001,
	'-Infinity'::float4,
	'-Infinity'::float8
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1002,
	'Infinity'::float4,
	'Infinity'::float8
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."realDataType",
	t1."doubleDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > 2
ORDER BY
	t1."ID"

