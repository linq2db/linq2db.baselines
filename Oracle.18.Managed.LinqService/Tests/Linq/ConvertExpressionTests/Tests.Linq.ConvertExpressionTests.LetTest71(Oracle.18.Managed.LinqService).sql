BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 5000

SELECT
	t."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_2
			WHERE
				c_2."ParentID" = t."ParentID" AND c_2."ChildID" > -100
		)
			THEN 1
		ELSE 0
	END as "Any_1",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_3
		WHERE
			c_3."ParentID" = t."ParentID" AND c_3."ChildID" > -100
	) as COUNT_1,
	(
		SELECT
			c_4."ParentID"
		FROM
			"Child" c_4
		WHERE
			c_4."ParentID" = t."ParentID" AND c_4."ChildID" > -100 AND
			c_4."ParentID" > 0
		ORDER BY
			c_4."ChildID"
		FETCH NEXT 1 ROWS ONLY
	) as "ParentID_1",
	t1."ParentID" as "ParentID_2",
	t1."ChildID"
FROM
	"Parent" t
		OUTER APPLY (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = t."ParentID" AND c_1."ChildID" > -100
			ORDER BY
				c_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t."ParentID" > 0
FETCH NEXT :take ROWS ONLY

