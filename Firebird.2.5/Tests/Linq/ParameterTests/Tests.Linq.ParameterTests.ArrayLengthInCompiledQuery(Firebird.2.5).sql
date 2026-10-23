-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT FIRST 2
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

