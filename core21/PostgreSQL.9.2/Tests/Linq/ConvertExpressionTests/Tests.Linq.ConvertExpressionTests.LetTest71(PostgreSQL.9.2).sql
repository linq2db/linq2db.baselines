BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @p1 Integer -- Int32
SET     @p1 = 5000

SELECT
	key_data_result."ParentID",
	c_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					t."ParentID"
				FROM
					"Parent" t
				WHERE
					t."ParentID" > 0
				LIMIT :p1
			) t1
	) key_data_result
		INNER JOIN "Child" c_1 ON c_1."ParentID" = key_data_result."ParentID" AND c_1."ChildID" > -100
ORDER BY
	c_1."ChildID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1
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
	(
		SELECT
			c_3."ParentID"
		FROM
			"Child" c_3
		WHERE
			c_3."ParentID" = t."ParentID" AND c_3."ChildID" > -100 AND
			c_3."ParentID" > 0
		ORDER BY
			c_3."ChildID"
		LIMIT :take_1
	)
FROM
	"Parent" t
WHERE
	t."ParentID" > 0
LIMIT :take

