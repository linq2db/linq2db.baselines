-- PostgreSQL.15 PostgreSQL

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1,'2')
) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

