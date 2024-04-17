BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

