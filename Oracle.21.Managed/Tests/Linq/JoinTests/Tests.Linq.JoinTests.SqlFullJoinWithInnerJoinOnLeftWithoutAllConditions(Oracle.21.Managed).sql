BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	left_1."ParentID",
	right_1."ParentID"
FROM
	"Parent" left_1
		FULL JOIN "Parent" right_1
			INNER JOIN "Parent" right2 ON right_1."Value1" = right2."Value1" + 2
		ON (right_1."Value1" + 2 = left_1."Value1" OR right_1."Value1" IS NULL AND left_1."Value1" IS NULL)
ORDER BY
	left_1."ParentID"

