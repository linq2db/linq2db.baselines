BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

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
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" o

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."ParentID",
	x."CountResult",
	x."Sum_1"
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
			) as "CountResult",
			o."ParentID",
			(
				SELECT
					SUM(a_Children_1."ParentID")
				FROM
					"Child" a_Children_1
				WHERE
					o."ParentID" = a_Children_1."ParentID"
			) as "Sum_1"
		FROM
			"Parent" o
	) x
WHERE
	x."CountResult" > 0

