BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", 2 AS "PersonID", NULL AS "LastName", NULL AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)), 3, NULL, NULL, CAST('M' AS Char(1)) FROM rdb$database) "t1"

