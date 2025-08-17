BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 2

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @id
FETCH NEXT 2 ROWS ONLY

