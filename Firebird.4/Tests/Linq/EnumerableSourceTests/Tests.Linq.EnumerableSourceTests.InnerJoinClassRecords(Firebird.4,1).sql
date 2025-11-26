-- Firebird.4 Firebird4

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", 1 AS ID, CAST(NULL AS VARCHAR(1)) AS "LastName", CAST(NULL AS VARCHAR(1)) AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VARCHAR(3)), 2, NULL, NULL, CAST('M' AS Char(1)) FROM rdb$database) "n" ON "p"."PersonID" = "n".ID

