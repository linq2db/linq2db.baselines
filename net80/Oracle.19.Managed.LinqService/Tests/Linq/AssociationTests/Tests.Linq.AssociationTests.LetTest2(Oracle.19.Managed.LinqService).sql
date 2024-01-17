BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
		WHERE
			t."ParentID" = t1."ParentID"
	)
FROM
	"Parent" t

