BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", 3 AS ID, NULL AS "LastName", NULL AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)), 4, NULL, NULL, CAST('M' AS Char(1)) FROM rdb$database) "t1"

