BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Char_Length("p"."FirstName") + CAST(@Length AS Int)
FROM
	"Person" "p"

