BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

