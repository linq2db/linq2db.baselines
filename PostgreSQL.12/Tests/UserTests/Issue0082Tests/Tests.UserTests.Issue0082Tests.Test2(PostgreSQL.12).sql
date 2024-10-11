BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	o."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			o."ParentID" = "a_Children"."ParentID"
	),
	(
		SELECT
			SUM("a_Children_1"."ParentID")
		FROM
			"Child" "a_Children_1"
		WHERE
			o."ParentID" = "a_Children_1"."ParentID"
	)
FROM
	"Parent" o

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" o

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x_1."ParentID",
	x_1."COUNT_1",
	x_1."SUM_1"
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" "a_Children"
				WHERE
					x."ParentID" = "a_Children"."ParentID"
			) as "COUNT_1",
			x."ParentID",
			(
				SELECT
					SUM("a_Children_1"."ParentID")
				FROM
					"Child" "a_Children_1"
				WHERE
					x."ParentID" = "a_Children_1"."ParentID"
			) as "SUM_1"
		FROM
			"Parent" x
	) x_1
WHERE
	x_1."COUNT_1" > 0

