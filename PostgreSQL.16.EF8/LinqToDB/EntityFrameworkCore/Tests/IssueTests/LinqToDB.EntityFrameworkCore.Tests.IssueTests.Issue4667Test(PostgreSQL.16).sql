-- PostgreSQL.15 PostgreSQL
DECLARE @value Json -- Object
SET     @value = {[property, value]}

MERGE INTO "Issue4667" "Target"
USING (VALUES
	(1,'{"test" : 1}'::jsonb,:value::json)
) "Source"
(
	"source_Id",
	"source_Payload",
	"source_Headers"
)
ON ("Target".id = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	id,
	payload,
	headers
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Payload",
	"Source"."source_Headers"
)



