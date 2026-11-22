-- PostgreSQL.15 PostgreSQL12
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"."ParentID",
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"
		INNER JOIN "Child" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo"."ParentID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"."ParentID"
WHERE
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"."ParentID" = :parentId

