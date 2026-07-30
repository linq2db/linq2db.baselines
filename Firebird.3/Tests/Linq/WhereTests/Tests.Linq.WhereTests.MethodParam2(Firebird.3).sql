-- Firebird.3 Firebird3
DECLARE @t Integer -- Int32
SET     @t = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @t

-- Firebird.3 Firebird3
DECLARE @t Integer -- Int32
SET     @t = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @t

