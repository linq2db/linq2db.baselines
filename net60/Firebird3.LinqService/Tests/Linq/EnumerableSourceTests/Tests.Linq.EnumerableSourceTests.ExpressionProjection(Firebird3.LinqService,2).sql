BeforeExecute
-- Firebird3 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 4

SELECT
	"n"."FirstName",
	"n"."PersonID"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT CAST('Janet' AS VARCHAR(5)) AS "FirstName", Cast(@ID as Int) AS "PersonID" FROM rdb$database
			UNION ALL
			SELECT CAST('Doe' AS VARCHAR(3)), Cast(@ID_1 as Int) FROM rdb$database) "n" ON "p"."PersonID" = "n"."PersonID"
ORDER BY
	"n"."PersonID"

