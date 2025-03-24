BeforeExecute
--  Firebird.5 Firebird4

SELECT
	CASE
		WHEN Char_Length("p"."FirstName") <> 0 THEN "p"."FirstName"
		WHEN NOT ("p"."MiddleName" IS NULL OR Char_Length("p"."MiddleName") = 0)
			THEN "p"."MiddleName"
		ELSE "p"."LastName"
	END
FROM
	"Person" "p"

