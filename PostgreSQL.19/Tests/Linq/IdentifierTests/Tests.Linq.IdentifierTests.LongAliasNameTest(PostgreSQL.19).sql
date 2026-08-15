-- PostgreSQL.19 PostgreSQL12
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

