BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t1"."Id",
	"t1"."CharFld"
FROM
	"Issue1279Table" "t1"

