-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + 123
FROM
	"TableWithIdentitySrc" "t1"

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

