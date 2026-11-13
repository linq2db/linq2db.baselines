-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
CREATE TABLE "SourceSchemaRowTemp"
(
	"Id"    Int  NOT NULL,
	"Value" Int  NOT NULL,
	"Name"  text     NULL,

	CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name Text(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow"
SET
	"Value" = :Value,
	"Name" = :Name
WHERE
	"SourceSchemaRow"."Id" = :Id

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DROP TABLE IF EXISTS "SourceSchemaRowTemp"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
LIMIT 2

