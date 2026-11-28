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

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

