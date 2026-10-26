-- PostgreSQL.15 PostgreSQL12
MERGE INTO "SourceSchemaRow" "Target"
USING (VALUES
	(1,5,'a')
) "Source"
(
	"Id",
	"Value_1",
	"Name"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1",
	"Source"."Name"
)

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."Name"
FROM
	"SourceSchemaRow" t1
LIMIT 2

