-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @systemId Varchar(6) -- String
SET     @systemId = 'system'

MERGE INTO "Issue4642Table2" "Target"
USING (
	SELECT
		y."Id" as "source_Id",
		y."SystemId" as "source_SystemId",
		y."Timestamp" as "source_Timestamp"
	FROM
		"Issue4642Table1" x
			INNER JOIN "Issue4642Table2" y ON x."Id" = y."Id"
	WHERE
		x."Id" IN (1) AND y."SystemId" = :systemId
) "Source"
(
	"source_Id",
	"source_SystemId",
	"source_Timestamp"
)
ON ("Target"."Id" = "Source"."source_Id" AND "Target"."SystemId" = "Source"."source_SystemId")

WHEN MATCHED THEN
UPDATE
SET
	"Timestamp" = "Source"."source_Timestamp"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"SystemId",
	"Timestamp"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_SystemId",
	"Source"."source_Timestamp"
)
RETURNING
	merge_action(),
	"Target"."Id"



