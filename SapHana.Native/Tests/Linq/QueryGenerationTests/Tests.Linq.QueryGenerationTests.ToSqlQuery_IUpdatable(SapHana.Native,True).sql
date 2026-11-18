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
UPDATE
	"TableWithIdentity" "t1"
SET
	"Value" = 123

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
LIMIT 2

