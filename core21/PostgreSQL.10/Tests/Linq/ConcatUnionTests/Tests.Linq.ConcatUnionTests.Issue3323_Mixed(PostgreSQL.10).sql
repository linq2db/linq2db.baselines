﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue3323Table"
(
	"Id"       Int  NOT NULL,
	"FistName" text     NULL,
	"LastName" text     NULL,
	"Text"     text NOT NULL,

	CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."FistName" || ' ' || r."LastName"
FROM
	"Issue3323Table" r
UNION ALL
SELECT
	r_1."Id" + 1,
	r_1."Text"
FROM
	"Issue3323Table" r_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id" + 1,
	r."Text"
FROM
	"Issue3323Table" r
UNION ALL
SELECT
	r_1."Id",
	r_1."FistName" || ' ' || r_1."LastName"
FROM
	"Issue3323Table" r_1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3323Table"

