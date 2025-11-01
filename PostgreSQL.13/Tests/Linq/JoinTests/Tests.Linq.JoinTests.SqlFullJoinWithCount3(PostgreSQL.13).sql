-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(t1."ParentID") = COUNT(right_2."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
FROM
	"Parent" t1
		FULL JOIN (
			SELECT
				right_1."ParentID"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id
		) right_2 ON right_2."ParentID" = t1."ParentID"
LIMIT 2

