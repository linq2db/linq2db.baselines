-- Firebird.3 Firebird3
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	@Value
)

-- Firebird.3 Firebird3
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + CAST(@addition AS Int)
FROM
	"TableWithIdentitySrc" "t1"

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

