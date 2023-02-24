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
			SELECT CAST('Janet' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database) "n" ON "p"."LastName" = "n"."item"

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
			SELECT CAST('Janet' AS VarChar(255) CHARACTER SET UNICODE_FSS) AS "item" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database
			UNION ALL
			SELECT CAST('Doe1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database) "n" ON "p"."LastName" = "n"."item"

