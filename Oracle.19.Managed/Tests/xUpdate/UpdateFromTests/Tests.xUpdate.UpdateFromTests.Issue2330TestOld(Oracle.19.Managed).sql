BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"Parent"
SET
	"Value1" = (
		SELECT
			b_1."ChildID"
		FROM
			"Parent" w_1
				INNER JOIN "Child" b_1 ON w_1."ParentID" = b_1."ParentID"
		WHERE
			b_1."ChildID" = (
				SELECT
					MAX(t2."ParentID")
				FROM
					"Child" t2
			) AND
			b_1."ChildID" = -1 AND
			"Parent"."ParentID" = w_1."ParentID" AND
			("Parent"."Value1" = w_1."Value1" OR "Parent"."Value1" IS NULL AND w_1."Value1" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" w
				INNER JOIN "Child" b ON w."ParentID" = b."ParentID"
		WHERE
			b."ChildID" = (
				SELECT
					MAX(t1."ParentID")
				FROM
					"Child" t1
			) AND
			b."ChildID" = -1 AND
			"Parent"."ParentID" = w."ParentID" AND
			("Parent"."Value1" = w."Value1" OR "Parent"."Value1" IS NULL AND w."Value1" IS NULL)
	)

