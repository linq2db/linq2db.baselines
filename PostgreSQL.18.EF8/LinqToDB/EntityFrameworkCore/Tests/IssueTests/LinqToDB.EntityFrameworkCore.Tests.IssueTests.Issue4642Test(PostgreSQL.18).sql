-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @systemId Varchar(6) -- String
SET     @systemId = 'system'

MERGE INTO "Issue4642Table2" "Target"
USING (
	SELECT
		y."Id",
		y."SystemId",
		y."Timestamp" as "Timestamp_1"
	FROM
		"Issue4642Table1" x
			INNER JOIN "Issue4642Table2" y ON x."Id" = y."Id"
	WHERE
		x."Id" IN (1) AND y."SystemId" = :systemId
) "Source"
(
	"Id",
	"SystemId",
	"Timestamp_1"
)
ON ("Target"."Id" = "Source"."Id" AND "Target"."SystemId" = "Source"."SystemId")

WHEN MATCHED THEN
UPDATE
SET
	"Timestamp" = "Source"."Timestamp_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"SystemId",
	"Timestamp"
)
VALUES
(
	"Source"."Id",
	"Source"."SystemId",
	"Source"."Timestamp_1"
)
RETURNING
	merge_action(),
	NEW."Id"



