-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT FIRST 2
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @id

