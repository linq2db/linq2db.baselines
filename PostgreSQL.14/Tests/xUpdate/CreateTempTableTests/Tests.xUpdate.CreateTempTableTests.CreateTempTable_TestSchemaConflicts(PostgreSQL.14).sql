-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'value'
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Id"      Int  NOT NULL,
	"Renamed" text     NULL
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
VALUES
(
	2,
	'renamed 2'
)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Renamed"
FROM
	"TempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

