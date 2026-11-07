-- SapHana.Native SapHana
DECLARE @CharFld NVarChar -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
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
	"Issue1279Table" "t1"
LIMIT 1

