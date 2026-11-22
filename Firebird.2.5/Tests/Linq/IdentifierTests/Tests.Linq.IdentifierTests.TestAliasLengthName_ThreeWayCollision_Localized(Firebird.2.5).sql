-- Firebird.2.5 Firebird
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVe_2"."ParentID",
	"long親Long子Long孫LongVe_2"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVe_2"
		INNER JOIN "Child" "long親Long子Long孫LongVe" ON "long親Long子Long孫LongVe"."ParentID" = "long親Long子Long孫LongVe_2"."ParentID"
		INNER JOIN "GrandChild" "long親Long子Long孫LongVe_1" ON "long親Long子Long孫LongVe_1"."ChildID" = "long親Long子Long孫LongVe"."ChildID"
WHERE
	"long親Long子Long孫LongVe_2"."ParentID" = @parentId

