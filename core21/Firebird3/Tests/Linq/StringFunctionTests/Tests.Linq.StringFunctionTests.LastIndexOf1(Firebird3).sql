BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Char(1) -- String
SET     @p1 = '0'
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN @p1 = 1 THEN Char_Length("p"."LastName") - 1
		WHEN Position('p', "p"."LastName") = 0
			THEN -1
		ELSE (Char_Length("p"."LastName") - Position('p', Reverse("p"."LastName"))) - @Length_1 + 1
	END = 2 AND
	"p"."PersonID" = 1

