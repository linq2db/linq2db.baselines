BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH("p"."FirstName") + CAST(@Length AS Int)
FROM
	"Person" "p"

