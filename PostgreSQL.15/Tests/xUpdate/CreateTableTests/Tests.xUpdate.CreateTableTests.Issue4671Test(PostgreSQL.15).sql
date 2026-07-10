-- PostgreSQL.15 PostgreSQL12

CREATE TEMPORARY TABLE "Issue4671EntityTMP"
(
	"Id"    SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	CONSTRAINT "PK_Issue4671EntityTMP" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.15 PostgreSQL12

INSERT INTO "Issue4671Entity"
(
	"Value"
)
VALUES
(
	1
)

-- PostgreSQL.15 PostgreSQL12

INSERT INTO "Issue4671EntityTMP"
(
	"Value"
)
VALUES
(
	2
)

-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4671Entity" t1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4671EntityTMP" t1
LIMIT 2

-- PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "Issue4671EntityTMP"

