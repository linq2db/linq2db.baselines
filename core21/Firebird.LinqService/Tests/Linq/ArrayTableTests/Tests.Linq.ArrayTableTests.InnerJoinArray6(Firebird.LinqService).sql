BeforeExecute
-- Firebird

SELECT 
	"p"."FirstName", 
	"p"."PersonID", 
	"p"."LastName", 
	"p"."MiddleName", 
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN ( 
			SELECT
				'Doe' as "Item"
			FROM rdb$database
		) "n" ON "p"."LastName" = "n"."Item"

