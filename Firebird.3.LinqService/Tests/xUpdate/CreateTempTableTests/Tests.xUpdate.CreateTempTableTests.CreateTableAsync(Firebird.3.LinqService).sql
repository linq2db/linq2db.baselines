BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

