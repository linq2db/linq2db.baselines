-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Id"      Int  NOT NULL,
	"Renamed" text     NULL
)

-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

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

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Renamed"
FROM
	"TempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

