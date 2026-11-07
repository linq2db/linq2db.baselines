-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "TableWithIdentitySrc"
(
	"Value"
)
VALUES
(
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
SELECT
	"t1"."Value" + :"addition"
FROM
	"TableWithIdentitySrc" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

