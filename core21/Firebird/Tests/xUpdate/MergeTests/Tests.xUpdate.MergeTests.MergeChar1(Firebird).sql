BeforeExecute
-- Firebird

SET GENERATOR "AllTypesID" TO 2

BeforeExecute
-- Firebird
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
-- Firebird
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT
		"t".ID,
		"t"."charDataType",
		"t"."ncharDataType",
		"t"."nvarcharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t".ID = @id_1
) "Source"
(
	ID, 
	"charDataType", 
	"ncharDataType", 
	"nvarcharDataType"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Target"."charDataType" = "Source"."charDataType",
	"Target"."ncharDataType" = "Source"."ncharDataType",
	"Target"."nvarcharDataType" = "Source"."nvarcharDataType"

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

