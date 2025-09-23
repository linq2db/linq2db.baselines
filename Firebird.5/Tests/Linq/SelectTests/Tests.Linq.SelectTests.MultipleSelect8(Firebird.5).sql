BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Length Integer -- Int32
SET     @Length = 2

SELECT
	("p2"."PersonID" * 2) / CAST(@Length AS Int),
	"p2"."FirstName"
FROM
	"Person" "p2"

