BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1
DECLARE @take_2 Integer -- Int32
SET     @take_2 = 1
DECLARE @take Integer -- Int32
SET     @take = 5000

SELECT
	t."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = t."ParentID" AND c_1."ChildID" > -100
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" c_2
		WHERE
			c_2."ParentID" = t."ParentID" AND c_2."ChildID" > -100
	),
	t1."First1",
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" t
		LEFT JOIN LATERAL (
			SELECT
				c_3."ParentID" as "First1"
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" = t."ParentID" AND c_3."ChildID" > -100 AND
				c_3."ParentID" > 0
			ORDER BY
				c_3."ChildID"
			LIMIT :take_1
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_4."ParentID",
				c_4."ChildID"
			FROM
				"Child" c_4
			WHERE
				c_4."ParentID" = t."ParentID" AND c_4."ChildID" > -100
			ORDER BY
				c_4."ChildID"
			LIMIT :take_2
		) t2 ON 1=1
WHERE
	t."ParentID" > 0
LIMIT :take

