-- PostgreSQL.18 PostgreSQL

MERGE INTO "Issue4556Table2" "Target"
USING (
	SELECT NULL::Int, NULL::json, NULL::jsonb, NULL::json, NULL::jsonb
	FROM "Issue4556Table2"	WHERE 1 = 0
)
 "Source"
(
	"Id",
	"PayloadJson",
	"PayloadJsonB",
	"HeadersJson",
	"HeadersJsonB"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Payload_json",
	"Payload_jsonb",
	"Headers_json",
	"Headers_jsonb"
)
VALUES
(
	"Source"."PayloadJson",
	"Source"."PayloadJsonB",
	"Source"."HeadersJson",
	"Source"."HeadersJsonB"
)

-- PostgreSQL.18 PostgreSQL
DECLARE @value Json -- Object
SET     @value = {[key1, value1]}
DECLARE @value_1 Jsonb -- Object
SET     @value_1 = {[key2, value3]}
DECLARE @value_2 Json -- Object
SET     @value_2 = {[sd, sdfgsd]}
DECLARE @value_3 Jsonb -- Object
SET     @value_3 = {[g4, sdg]}

MERGE INTO "Issue4556Table2" "Target"
USING (VALUES
	(0,'true'::json,'123'::jsonb,:value::json,:value_1::jsonb),
	(0,'"some string"','-124',:value_2,:value_3)
) "Source"
(
	"Id",
	"PayloadJson",
	"PayloadJsonB",
	"HeadersJson",
	"HeadersJsonB"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Payload_json",
	"Payload_jsonb",
	"Headers_json",
	"Headers_jsonb"
)
VALUES
(
	"Source"."PayloadJson",
	"Source"."PayloadJsonB",
	"Source"."HeadersJson",
	"Source"."HeadersJsonB"
)

