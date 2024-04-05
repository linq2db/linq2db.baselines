BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2

SELECT
	t1."c1"
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1."ParentID") = COUNT(right_2."ParentID") AND COUNT(left_1."ParentID") = COUNT(*)
					THEN 1
				ELSE 0
			END as "c1"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Parent" p
				WHERE
					p."ParentID" <> :id1
			) left_1
				FULL JOIN (
					SELECT
						right_1."ParentID"
					FROM
						"Parent" right_1
					WHERE
						right_1."ParentID" <> :id2
				) right_2 ON right_2."ParentID" = left_1."ParentID"
	) t1
FETCH NEXT 2 ROWS ONLY

