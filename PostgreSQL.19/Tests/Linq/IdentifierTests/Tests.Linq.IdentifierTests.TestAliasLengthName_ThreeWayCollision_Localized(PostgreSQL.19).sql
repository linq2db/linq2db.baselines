-- PostgreSQL.19 PostgreSQL12
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_2"."ParentID",
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_2"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_2"
		INNER JOIN "Child" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo"."ParentID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_2"."ParentID"
		INNER JOIN "GrandChild" "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1" ON "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_1"."ChildID" = "long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo"."ChildID"
WHERE
	"long親Long子Long孫LongVeryLongVeryVeryLongVeryVeryLongLo_2"."ParentID" = :parentId

