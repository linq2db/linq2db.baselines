-- Firebird.4 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VARCHAR(5)) AS "item", CAST('Janet' AS VARCHAR(5)) AS "item0" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)), CAST('Doe' AS VARCHAR(3)) FROM rdb$database
		UNION ALL
		SELECT CAST('John' AS VARCHAR(4)), CAST('John' AS VARCHAR(4)) FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)), CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "n"
		INNER JOIN "Person" "p" ON "n"."item" = "p"."LastName"

