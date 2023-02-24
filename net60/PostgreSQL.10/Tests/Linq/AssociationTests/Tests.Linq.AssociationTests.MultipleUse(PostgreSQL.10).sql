BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	t1."ParentID_1",
	t1."Value1"
FROM
	"Child" s
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID",
				c_1."ChildID",
				"a_Parent"."ParentID" as "ParentID_1",
				"a_Parent"."Value1"
			FROM
				"Child" c_1
					LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
			WHERE
				c_1."ChildID" = s."ChildID"
			LIMIT :take
		) t1 ON 1=1
WHERE
	(
		SELECT
			1
		FROM
			"Child" c_2
		WHERE
			c_2."ChildID" = s."ChildID"
		LIMIT :take_1
	) IS NOT NULL

