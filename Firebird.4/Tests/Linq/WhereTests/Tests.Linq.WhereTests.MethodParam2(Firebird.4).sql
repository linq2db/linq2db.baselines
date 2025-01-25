BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

