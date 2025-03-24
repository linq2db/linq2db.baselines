﻿BeforeExecute
--  Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 4

SELECT
	"n"."PersonID",
	"n"."FirstName"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT CAST(@ID AS Int) AS "PersonID", CAST('Janet' AS VARCHAR(5)) AS "FirstName" FROM rdb$database
			UNION ALL
			SELECT CAST(@ID_1 AS Int), CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "n" ON "t1"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

