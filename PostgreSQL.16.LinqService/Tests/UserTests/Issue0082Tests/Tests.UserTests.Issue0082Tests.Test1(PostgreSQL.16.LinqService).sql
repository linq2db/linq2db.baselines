﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" od
		WHERE
			t1."ParentID" = od."ParentID"
	),
	(
		SELECT
			SUM(od_1."ParentID")
		FROM
			"Child" od_1
		WHERE
			t1."ParentID" = od_1."ParentID"
	)
FROM
	"Parent" t1

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parent" t1

BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x_1."ParentID",
	x_1."CountResult",
	x_1."SUM_1"
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" od
				WHERE
					x."ParentID" = od."ParentID"
			) as "CountResult",
			x."ParentID",
			(
				SELECT
					SUM(od_1."ParentID")
				FROM
					"Child" od_1
				WHERE
					x."ParentID" = od_1."ParentID"
			) as "SUM_1"
		FROM
			"Parent" x
	) x_1
WHERE
	x_1."CountResult" > 0

