﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	(
		SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", 2 AS ID, CAST(NULL AS VARCHAR(1)) AS "LastName", CAST(NULL AS VARCHAR(1)) AS "MiddleName", CAST('M' AS Char(1)) AS "Gender" FROM rdb$database
		UNION ALL
		SELECT CAST('Doe' AS VARCHAR(3)), 3, NULL, NULL, CAST('M' AS Char(1)) FROM rdb$database) "t1"

