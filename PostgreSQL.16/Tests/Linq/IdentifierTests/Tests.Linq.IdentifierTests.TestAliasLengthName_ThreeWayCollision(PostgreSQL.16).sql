-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @parentId Integer -- Int32
SET     @parentId = 1

SELECT
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_2"."ParentID",
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_2"."Value1"
FROM
	"Parent" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_2"
		INNER JOIN "Child" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa"."ParentID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_2"."ParentID"
		INNER JOIN "GrandChild" "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1" ON "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_1"."ChildID" = "longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa"."ChildID"
WHERE
	"longLongLongLongVeryLongVeryVeryLongVeryVeryLongLongAliasNa_2"."ParentID" = :parentId

