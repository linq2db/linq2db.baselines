﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			o."ParentID" = a_Children."ParentID"
	),
	(
		SELECT
			Sum(a_Children_1."ParentID")
		FROM
			"Child" a_Children_1
		WHERE
			o."ParentID" = a_Children_1."ParentID"
	)
FROM
	"Parent" o

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Parent" o

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x_1."ParentID",
	x_1."CountResult",
	x_1."Sum_1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" a_Children
				WHERE
					x."ParentID" = a_Children."ParentID"
			) as "CountResult",
			x."ParentID",
			(
				SELECT
					Sum(a_Children_1."ParentID")
				FROM
					"Child" a_Children_1
				WHERE
					x."ParentID" = a_Children_1."ParentID"
			) as "Sum_1"
		FROM
			"Parent" x
	) x_1
WHERE
	x_1."CountResult" > 0

