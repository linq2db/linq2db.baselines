-- Firebird.2.5 Firebird
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"long親Long子Long孫LongVe_1"."ParentID",
	"long親Long子Long孫LongVe_1"."Value1"
FROM
	"Parent" "long親Long子Long孫LongVe_1"
		INNER JOIN "Child" "long親Long子Long孫LongVe" ON "long親Long子Long孫LongVe"."ParentID" = "long親Long子Long孫LongVe_1"."ParentID"
WHERE
	"long親Long子Long孫LongVe_1"."ParentID" = @parentId

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

