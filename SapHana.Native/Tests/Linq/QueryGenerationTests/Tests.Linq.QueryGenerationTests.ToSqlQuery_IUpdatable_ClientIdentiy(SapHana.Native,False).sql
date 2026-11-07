-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @newValue Integer -- Int32
SET     @newValue = 123

UPDATE
	"TableWithIdentity" "t1"
SET
	"Id" = 492,
	"Value" = :"newValue"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

