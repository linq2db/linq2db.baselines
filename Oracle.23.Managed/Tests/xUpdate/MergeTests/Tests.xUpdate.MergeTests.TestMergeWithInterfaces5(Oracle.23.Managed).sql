-- Oracle.23.Managed Oracle.Managed Oracle12

MERGE INTO "ReviewIndexes" Target
USING (
	SELECT
		t1."Id",
		t1."Value" as "Value_1"
	FROM
		"ReviewIndexes" t1
) "Source"
ON (Target."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
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

