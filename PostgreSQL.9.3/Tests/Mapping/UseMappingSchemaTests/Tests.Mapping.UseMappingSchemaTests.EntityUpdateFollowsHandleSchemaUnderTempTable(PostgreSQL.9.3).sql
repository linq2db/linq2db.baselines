-- PostgreSQL.9.3 PostgreSQL
CREATE TEMPORARY TABLE "SourceSchemaRowTemp"
(
	"Id"    Int  NOT NULL,
	"Value" Int  NOT NULL,
	"Name"  text     NULL,

	CONSTRAINT "PK_SourceSchemaRowTemp" PRIMARY KEY ("Id", "Value")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "SourceSchemaRowTemp"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
LIMIT 2

