-- Firebird.2.5 Firebird
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
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
	"Issue1279Table" "t1"

