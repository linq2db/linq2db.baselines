BeforeExecute
-- Firebird.2.5 Firebird
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

BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"TableWithIdentity" "t1"
SET
	"Id" = 492,
	"Value" = 123

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

