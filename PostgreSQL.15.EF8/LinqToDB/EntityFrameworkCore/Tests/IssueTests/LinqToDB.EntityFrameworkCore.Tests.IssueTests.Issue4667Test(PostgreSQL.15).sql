-- PostgreSQL.15 PostgreSQL
DECLARE @value Json -- Object
SET     @value = {[property, value]}

MERGE INTO "Issue4667" "Target"
USING (VALUES
	(1,'{"test" : 1}'::jsonb,:value::json)
) "Source"
(
	"Id",
	"Payload",
	"Headers"
)
ON ("Target".id = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	id,
	payload,
	headers
)
VALUES
(
	"Source"."Id",
	"Source"."Payload",
	"Source"."Headers"
)



