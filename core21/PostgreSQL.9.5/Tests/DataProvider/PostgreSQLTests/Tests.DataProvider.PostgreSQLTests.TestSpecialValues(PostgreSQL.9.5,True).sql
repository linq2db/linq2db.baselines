BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1000,
	'NaN',
	'NaN'
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1001,
	'-Infinity',
	'-Infinity'
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

INSERT INTO "AllTypes"
(
	"ID",
	"realDataType",
	"doubleDataType"
)
VALUES
(
	1002,
	'Infinity',
	'Infinity'
)

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" >= 1000

