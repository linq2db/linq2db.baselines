BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	o."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			o."ParentID" = t1."ParentID"
	),
	(
		SELECT
			Sum(x."ParentID")
		FROM
			"Child" x
		WHERE
			o."ParentID" = x."ParentID"
	)
FROM
	"Parent" o

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" o

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	x_1."ParentID",
	x_1."CountResult",
	x_1."SumResult"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" t1
				WHERE
					o."ParentID" = t1."ParentID"
			) as "CountResult",
			o."ParentID",
			(
				SELECT
					Sum(x."ParentID")
				FROM
					"Child" x
				WHERE
					o."ParentID" = x."ParentID"
			) as "SumResult"
		FROM
			"Parent" o
	) x_1
WHERE
	x_1."CountResult" > 0

