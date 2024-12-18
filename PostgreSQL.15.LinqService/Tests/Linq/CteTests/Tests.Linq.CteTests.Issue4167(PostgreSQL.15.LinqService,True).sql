BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4167Table"
(
	"ID"        Int  NOT NULL,
	"Value"     text     NULL,
	"EnumValue" Int      NULL,

	CONSTRAINT "PK_Issue4167Table" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value Text(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Value Text(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 3

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Text(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = NULL

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @Value Text(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN g_1."EnumValue" IS NOT NULL THEN g_1."EnumValue"
			ELSE 0
		END
	FROM
		"Issue4167Table" g_1
	WHERE
		g_1."Value" = '000001' AND g_1."Value" IS NOT NULL
	GROUP BY
		g_1."Value",
		g_1."EnumValue"
)
SELECT
	t1."EnumValue"
FROM
	"CTE_1" t1
ORDER BY
	t1."EnumValue"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

