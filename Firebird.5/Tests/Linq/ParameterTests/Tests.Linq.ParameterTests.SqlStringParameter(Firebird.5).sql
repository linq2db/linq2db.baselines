BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p VarChar(4) -- String
SET     @p = 'John'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p
FETCH NEXT @take ROWS ONLY

