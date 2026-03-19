-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ParentID",
	"IndexedParent_1"."Item1",
	"IndexedParent_1"."Value1"
FROM
	"Parent" t1,
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY "IndexedParent"."ParentID") - 1 as "Item1",
			"IndexedParent"."Value1",
			"IndexedParent"."ParentID"
		FROM
			"Parent" "IndexedParent"
	) "IndexedParent_1"
WHERE
	"IndexedParent_1"."Item1" < 5
ORDER BY
	"IndexedParent_1"."ParentID"

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

