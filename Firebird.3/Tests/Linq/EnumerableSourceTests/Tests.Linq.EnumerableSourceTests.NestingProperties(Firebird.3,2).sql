-- Firebird.3 Firebird3

SELECT
	"x"."FirstName",
	"x".ID,
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	(
		SELECT 1 AS "Patient_PersonID", CAST('Janet' AS VARCHAR(5)) AS "FirstName", 3 AS ID, CAST(NULL AS VARCHAR(1)) AS "LastName", CAST(NULL AS VARCHAR(1)) AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
		UNION ALL
		SELECT NULL, CAST('Doe' AS VARCHAR(3)), 4, NULL, NULL, CAST('M' AS Char(1)) FROM rdb$database) "x"
WHERE
	"x"."Patient_PersonID" = 1

