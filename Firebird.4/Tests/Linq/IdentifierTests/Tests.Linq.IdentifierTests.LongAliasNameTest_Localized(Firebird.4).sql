-- Firebird.4 Firebird4
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"."ParentID",
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"
		INNER JOIN "Child" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia"."ParentID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"."ParentID"
WHERE
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLongAlia_1"."ParentID" = @parentId

