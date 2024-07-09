﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 3

SELECT
	"n"."FirstName",
	"n"."PersonID"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", CAST(@ID AS Int) AS "PersonID" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VARCHAR(3)), CAST(@ID_1 AS Int) FROM rdb$database) "n" ON "t1"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

