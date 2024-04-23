BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	("p2"."PersonID" * CAST(@ID AS Int)) / 2,
	"p2"."FirstName"
FROM
	"Person" "p2"

