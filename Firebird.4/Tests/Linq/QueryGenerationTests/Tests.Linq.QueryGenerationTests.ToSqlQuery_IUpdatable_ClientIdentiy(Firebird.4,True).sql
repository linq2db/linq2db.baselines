-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4

UPDATE
	"TableWithIdentity" "t1"
SET
	"Id" = 492,
	"Value" = 123

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

