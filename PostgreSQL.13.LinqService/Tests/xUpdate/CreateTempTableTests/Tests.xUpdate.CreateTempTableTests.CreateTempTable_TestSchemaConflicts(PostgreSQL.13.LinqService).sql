BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TempTable"
(
	"Id"      Int  NOT NULL,
	"Renamed" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestTempTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Renamed"
FROM
	"TempTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TempTable"

