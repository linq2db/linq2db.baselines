BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "p"."FirstName" IS NULL OR Char_Length("p"."FirstName") = 0
			THEN TRUE
		ELSE FALSE
	END,
	"p"."FirstName",
	CASE
		WHEN "p"."MiddleName" IS NULL OR Char_Length("p"."MiddleName") = 0
			THEN TRUE
		ELSE FALSE
	END,
	"p"."MiddleName",
	"p"."LastName"
FROM
	"Person" "p"

