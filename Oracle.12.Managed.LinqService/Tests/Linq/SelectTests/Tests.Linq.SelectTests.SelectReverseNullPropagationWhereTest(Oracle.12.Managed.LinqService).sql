BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	CASE
		WHEN p."ParentID" IS NOT NULL THEN p."Value1"
		ELSE NULL
	END,
	CASE
		WHEN c_1."ParentID" IS NOT NULL THEN CASE
			WHEN a_Parent."ParentID" IS NOT NULL THEN a_Parent."Value1"
			ELSE NULL
		END
		ELSE NULL
	END
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
		LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"
WHERE
	(p."ParentID" > 0 OR p."Value1" > 0 OR a_Parent."Value1" > 0)

