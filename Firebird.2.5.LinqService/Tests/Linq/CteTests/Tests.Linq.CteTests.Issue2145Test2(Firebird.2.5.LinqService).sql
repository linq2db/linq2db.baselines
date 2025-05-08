﻿BeforeExecute
-- Firebird.2.5 Firebird

WITH CTE_1
(
	ID,
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		"t1".ID,
		"t1"."FirstName",
		"t1"."LastName",
		"t1"."MiddleName",
		"t1"."Gender"
	FROM
		(
			SELECT 10 AS ID, CAST('FN1' AS VARCHAR(3)) AS "FirstName", 10 AS ID0, CAST('LN1' AS VARCHAR(3)) AS "LastName", NULL AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
			UNION ALL
			SELECT 11, CAST('FN2' AS VARCHAR(3)), 11, NULL, NULL, CAST('F' AS Char(1)) FROM rdb$database) "t1"
)
SELECT
	"p"."FirstName",
	"p".ID,
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	CTE_1 "p"
WHERE
	"p".ID = 11

