-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"Parent"
SET
	"ParentID" = (
		SELECT
			p1_1."ParentID"
		FROM
			"Parent" p1_1
				INNER JOIN "Parent" p2_1 ON p1_1."ParentID" = p2_1."ParentID"
		WHERE
			p1_1."ParentID" < 3 AND "Parent"."ParentID" = p2_1."ParentID" AND
			("Parent"."Value1" = p2_1."Value1" OR "Parent"."Value1" IS NULL AND p2_1."Value1" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p1
				INNER JOIN "Parent" p2 ON p1."ParentID" = p2."ParentID"
		WHERE
			p1."ParentID" < 3 AND "Parent"."ParentID" = p2."ParentID" AND
			("Parent"."Value1" = p2."Value1" OR "Parent"."Value1" IS NULL AND p2."Value1" IS NULL)
	)

