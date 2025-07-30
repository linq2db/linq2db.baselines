BeforeExecute
-- Firebird.2.5 Firebird
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

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + 123
FROM
	"TableWithIdentitySrc" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

