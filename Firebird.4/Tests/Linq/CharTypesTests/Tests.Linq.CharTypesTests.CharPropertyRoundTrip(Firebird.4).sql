-- Firebird.4 Firebird4
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "CharFieldRecord"
(
	"CharFld"
)
VALUES
(
	@CharFld
)

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."CharFld"
FROM
	"CharFieldRecord" "t1"
FETCH NEXT 1 ROWS ONLY

