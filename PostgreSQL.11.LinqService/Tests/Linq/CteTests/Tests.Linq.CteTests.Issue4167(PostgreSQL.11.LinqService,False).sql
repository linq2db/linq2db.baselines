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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @default Integer -- Int32
SET     @default = 0

SELECT
	t."EnumValue"
FROM
	"Issue4167Table" t
WHERE
	t."Value" = '000001'
GROUP BY
	t."Value",
	t."EnumValue"
ORDER BY
	Coalesce(t."EnumValue", :default)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4167Table"

