-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT FIRST 1
	"t1"."Id",
	"t1"."CharFld"
FROM
	"CharFieldRecord" "t1"

