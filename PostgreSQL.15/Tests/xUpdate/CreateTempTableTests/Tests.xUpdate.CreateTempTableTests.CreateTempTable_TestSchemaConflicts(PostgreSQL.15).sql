-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Id"      Int  NOT NULL,
	"Renamed" text     NULL,

	CONSTRAINT "PK_TempTable" PRIMARY KEY ("Id")
)

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Renamed"
FROM
	"TempTable" t1
ORDER BY
	t1."Id"

-- PostgreSQL.15 PostgreSQL12
DROP TABLE IF EXISTS "TempTable"

