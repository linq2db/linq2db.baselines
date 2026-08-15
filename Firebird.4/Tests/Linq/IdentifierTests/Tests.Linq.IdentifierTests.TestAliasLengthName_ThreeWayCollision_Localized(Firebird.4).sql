-- Firebird.4 Firebird4
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_2"."ParentID",
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_2"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_2"
		INNER JOIN "Child" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia"."ParentID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_2"."ParentID"
		INNER JOIN "GrandChild" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"."ChildID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia"."ChildID"
WHERE
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_2"."ParentID" = @parentId

