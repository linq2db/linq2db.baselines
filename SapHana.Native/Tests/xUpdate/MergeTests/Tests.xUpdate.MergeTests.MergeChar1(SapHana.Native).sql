-- SapHana.Native SapHana
INSERT INTO "AllTypes"
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	char(0),
	char(0)
)

-- SapHana.Native SapHana
SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT
		"t"."ID",
		"t"."charDataType",
		"t"."ncharDataType",
		"t"."nvarcharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t"."ID" = :"id"
) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."charDataType",
	"ncharDataType" = "Source"."ncharDataType",
	"nvarcharDataType" = "Source"."nvarcharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType",
	"Source"."nvarcharDataType"
)

