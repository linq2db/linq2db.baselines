BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Parent" o

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			x."ParentID" = a_Children."ParentID"
	),
	(
		SELECT
			Sum(a_Children_1."ParentID")
		FROM
			"Child" a_Children_1
		WHERE
			x."ParentID" = a_Children_1."ParentID"
	)
FROM
	"Parent" x
WHERE
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			x."ParentID" = a_Children."ParentID"
	) > 0

