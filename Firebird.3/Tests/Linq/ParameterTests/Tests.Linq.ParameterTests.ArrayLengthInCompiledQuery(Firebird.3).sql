-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p
FETCH NEXT 2 ROWS ONLY

