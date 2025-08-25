BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 4

SELECT
	"n".ID,
	"n"."FirstName"
FROM
	"Person" "t1"
		INNER JOIN (
			SELECT CAST(@ID AS Int) AS ID, CAST('Janet' AS VARCHAR(5)) AS "FirstName" FROM rdb$database
			UNION ALL
			SELECT CAST(@ID_1 AS Int), CAST('Doe' AS VARCHAR(3)) FROM rdb$database) "n" ON "t1"."PersonID" = "n".ID
ORDER BY
	"n".ID

