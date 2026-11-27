-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
CREATE TEMPORARY TABLE "TempIdentityRowTMP"
(
	"Id"    SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	CONSTRAINT "PK_TempIdentityRowTMP" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
INSERT INTO "TempIdentityRow"
(
	"Value"
)
VALUES
(
	1
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
INSERT INTO "TempIdentityRowTMP"
(
	"Value"
)
VALUES
(
	2
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"TempIdentityRow" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"TempIdentityRowTMP" t1
LIMIT 2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DROP TABLE IF EXISTS "TempIdentityRowTMP"

