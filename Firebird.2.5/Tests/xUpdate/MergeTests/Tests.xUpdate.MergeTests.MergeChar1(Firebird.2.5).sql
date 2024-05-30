BeforeExecute
-- Firebird.2.5 Firebird

SET GENERATOR "AllTypesID" TO 2

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	_utf8 x'00',
	_utf8 x'00'
)
RETURNING
	ID

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT
		"t".ID as "source_ID",
		"t"."charDataType" as "source_charDataType",
		"t"."ncharDataType" as "source_ncharDataType",
		"t"."nvarcharDataType" as "source_nvarcharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t".ID = @id
) "Source"
(
	"source_ID",
	"source_charDataType",
	"source_ncharDataType",
	"source_nvarcharDataType"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."source_charDataType",
	"ncharDataType" = "Source"."source_ncharDataType",
	"nvarcharDataType" = "Source"."source_nvarcharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType",
	"nvarcharDataType"
)
VALUES
(
	"Source"."source_charDataType",
	"Source"."source_ncharDataType",
	"Source"."source_nvarcharDataType"
)

BeforeExecute
DisposeTransaction
