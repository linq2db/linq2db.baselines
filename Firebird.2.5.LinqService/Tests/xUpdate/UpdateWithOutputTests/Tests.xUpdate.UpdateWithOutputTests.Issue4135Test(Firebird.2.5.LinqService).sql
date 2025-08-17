BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table" "e"
SET
	"NeedsUpdate" = '0'
WHERE
	"e"."NeedsUpdate" = '1'
ORDER BY
	"e"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

