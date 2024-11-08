﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			o."ParentID" = a_Children."ParentID"
	),
	(
		SELECT
			SUM(a_Children_1."ParentID")
		FROM
			"Child" a_Children_1
		WHERE
			o."ParentID" = a_Children_1."ParentID"
	)
FROM
	"Parent" o

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Parent" o

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x.COUNT_1,
	x.SUM_1
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					"Child" a_Children
				WHERE
					o."ParentID" = a_Children."ParentID"
			) as COUNT_1,
			o."ParentID",
			(
				SELECT
					SUM(a_Children_1."ParentID")
				FROM
					"Child" a_Children_1
				WHERE
					o."ParentID" = a_Children_1."ParentID"
			) as SUM_1
		FROM
			"Parent" o
	) x
WHERE
	x.COUNT_1 > 0

