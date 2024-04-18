BeforeExecute
-- Firebird.4 Firebird4

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
		WHEN CASE
			WHEN "p"."FirstName" IS NULL
				THEN NULL
			ELSE CASE
				WHEN "p"."FirstName" STARTING WITH 'Jo'
					THEN TRUE
				ELSE FALSE
			END
		END IS NULL
			THEN FALSE
		WHEN "p"."FirstName" IS NULL
			THEN NULL
		ELSE CASE
			WHEN "p"."FirstName" STARTING WITH 'Jo'
				THEN TRUE
			ELSE FALSE
		END
	END = TRUE

