-- PostgreSQL.9.2 PostgreSQL
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"."ParentID",
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"
		INNER JOIN "Child" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa"."ParentID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"."ParentID"
WHERE
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"."ParentID" = :parentId

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

