-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

