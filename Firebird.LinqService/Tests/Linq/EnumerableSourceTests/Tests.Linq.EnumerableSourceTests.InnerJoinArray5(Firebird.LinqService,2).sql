BeforeExecute
-- Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
		UNION ALL
		SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database) "n"
		INNER JOIN "Person" "p" ON "n"."item" = "p"."LastName"

