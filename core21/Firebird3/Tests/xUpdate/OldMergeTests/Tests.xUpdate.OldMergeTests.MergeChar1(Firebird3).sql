BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 85

SELECT 
	"t".ID, 
	"t"."charDataType", 
	"t"."ncharDataType"
FROM
	"AllTypes" "t"
WHERE
	"t".ID = @id_1

BeforeExecute
-- Firebird3 Firebird
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 85

MERGE INTO "AllTypes" "Target"
USING ( 
	SELECT 
		"t".ID, 
		"t"."charDataType", 
		"t"."ncharDataType"
	FROM
		"AllTypes" "t"
	WHERE
		"t".ID = @id_1
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
	"Target"."charDataType" = "Source"."charDataType",
	"Target"."ncharDataType" = "Source"."ncharDataType"

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

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 85

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID = @id

