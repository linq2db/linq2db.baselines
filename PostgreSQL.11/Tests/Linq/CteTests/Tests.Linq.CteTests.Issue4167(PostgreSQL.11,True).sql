BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4167Table"
(
	"ID"        Int  NOT NULL,
	"Value"     text     NULL,
	"EnumValue" Int      NULL,

	CONSTRAINT "PK_Issue4167Table" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @default Integer -- Int32
SET     @default = 0

WITH "CTE_1" ("EnumValue")
AS
(
	SELECT
		Coalesce(t."EnumValue", :default)
	FROM
		"Issue4167Table" t
	WHERE
		t."Value" = '000001'
	GROUP BY
		t."Value",
		t."EnumValue"
)
SELECT
	r."EnumValue"
FROM
	"CTE_1" r
ORDER BY
	r."EnumValue"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

