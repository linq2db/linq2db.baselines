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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

