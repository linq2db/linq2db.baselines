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

-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 3

MERGE INTO "AllTypes" "Target"
USING (
	SELECT
		"t".ID,
		"t"."charDataType",
		"t"."ncharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t".ID = @id
) "Source"
(
	ID,
	"charDataType",
	"ncharDataType"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"charDataType" = "Source"."charDataType",
	"ncharDataType" = "Source"."ncharDataType"

WHEN NOT MATCHED THEN
INSERT
(
	"charDataType",
	"ncharDataType"
)
VALUES
(
	"Source"."charDataType",
	"Source"."ncharDataType"
)

