-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

