BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"s"."FirstName",
	"s"."LastName",
	"s"."FullName"
FROM
	(
		SELECT
			"p"."FirstName",
			"p"."LastName" || ', ' || "p"."FirstName" as "LastName",
			((("p"."LastName" || ', ' || "p"."FirstName") || ' (' || Coalesce("p"."MiddleName", '')) || ' + ' || Coalesce("p"."MiddleName", '')) || ')' as "FullName"
		FROM
			"Person" "p"
	) "s"
WHERE
	"s"."FirstName" <> '' OR "s"."LastName" <> '' OR "s"."FullName" <> ''
ORDER BY
	"s"."FirstName",
	"s"."LastName"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

