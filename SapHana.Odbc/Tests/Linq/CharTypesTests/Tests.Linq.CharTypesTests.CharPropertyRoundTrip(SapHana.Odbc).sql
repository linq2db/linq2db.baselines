-- SapHana.Odbc SapHanaOdbc
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
(
	"CharFld"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."CharFld"
FROM
	"CharFieldRecord" "t1"
LIMIT 1

