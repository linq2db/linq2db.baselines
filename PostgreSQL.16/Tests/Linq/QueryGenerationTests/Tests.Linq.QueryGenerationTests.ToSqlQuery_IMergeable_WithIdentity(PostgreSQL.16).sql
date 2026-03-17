-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "TableWithIdentity" "Target"
USING (VALUES
	(1,2)
) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Value"
)
VALUES
(
	"Source"."Value_1"
)

