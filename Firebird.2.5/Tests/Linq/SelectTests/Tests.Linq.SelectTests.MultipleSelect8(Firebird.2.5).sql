BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	("p2"."PersonID" * 2) / CAST(@ID AS Int),
	"p2"."FirstName"
FROM
	"Person" "p2"

