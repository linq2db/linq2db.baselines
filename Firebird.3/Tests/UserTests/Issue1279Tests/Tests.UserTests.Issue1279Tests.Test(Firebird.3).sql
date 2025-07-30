BeforeExecute
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."CharFld"
FROM
	"Issue1279Table" "t1"
FETCH NEXT 1 ROWS ONLY

