BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table" "e"
SET
	"NeedsUpdate" = FALSE
WHERE
	"e"."NeedsUpdate"
ORDER BY
	"e"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

