-- SapHana.Native SapHana
DECLARE @CharFld NVarChar -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
(
	"CharFld"
)
VALUES
(
	:"CharFld"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."CharFld"
FROM
	"CharFieldRecord" "t1"
LIMIT 1

