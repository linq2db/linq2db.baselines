-- Firebird.3 Firebird3
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	@Value
)

-- Firebird.3 Firebird3
DECLARE @newValue Integer -- Int32
SET     @newValue = 123

UPDATE
	"TableWithIdentity" "t1"
SET
	"Value" = CAST(@newValue AS Int)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

