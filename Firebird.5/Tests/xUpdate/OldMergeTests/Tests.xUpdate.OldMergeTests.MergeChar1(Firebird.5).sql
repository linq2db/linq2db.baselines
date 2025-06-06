BeforeExecute
-- Firebird.5 Firebird4

SET GENERATOR "AllTypesID" TO 2

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 3

SELECT
	"t".ID,
	"t"."charDataType",
	"t"."ncharDataType"
FROM
	"AllTypes" "t"
WHERE
	"t".ID = @id

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT
		"t".ID as "source_ID",
		"t"."charDataType" as "source_charDataType",
		"t"."ncharDataType" as "source_ncharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t".ID = @id
) "Source"
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."source_charDataType",
	"ncharDataType" = "Source"."source_ncharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	"Source"."source_charDataType",
	"Source"."source_ncharDataType"
)

BeforeExecute
DisposeTransaction
