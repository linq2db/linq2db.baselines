BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

