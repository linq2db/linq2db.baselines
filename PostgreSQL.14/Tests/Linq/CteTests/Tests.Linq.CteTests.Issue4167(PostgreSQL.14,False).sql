BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4167Table"
(
	"ID"        Int  NOT NULL,
	"Value"     text     NULL,
	"EnumValue" Int      NULL,

	CONSTRAINT "PK_Issue4167Table" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN g_1."EnumValue" IS NOT NULL THEN g_1."EnumValue"
		ELSE 0
	END
FROM
	"Issue4167Table" g_1
WHERE
	g_1."Value" = '000001'
GROUP BY
	g_1."Value",
	g_1."EnumValue"
ORDER BY
	CASE
		WHEN g_1."EnumValue" IS NOT NULL THEN g_1."EnumValue"
		ELSE 0
	END

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

