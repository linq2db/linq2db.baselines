BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VARCHAR(5)) AS "item" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)) FROM rdb$database
		UNION ALL
		SELECT CAST('John' AS VARCHAR(4)) FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "n"
		INNER JOIN "Person" "p" ON "n"."item" = "p"."LastName"

