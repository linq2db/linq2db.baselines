BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Max(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

SELECT
	t1."realDataType",
	t1."doubleDataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > 2
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > 2

