-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TEMPORARY TABLE "TempIdentityRowTMP"
(
	"Id"    SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	CONSTRAINT "PK_TempIdentityRowTMP" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "TempIdentityRow"
(
	"Value"
)
VALUES
(
	1
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "TempIdentityRowTMP"
(
	"Value"
)
VALUES
(
	2
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TempIdentityRow" t1
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"TempIdentityRowTMP" t1
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TempIdentityRowTMP"

