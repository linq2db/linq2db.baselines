-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t2."cond"
FROM
	(
		SELECT
			CASE
				WHEN COUNT(t1."ParentID") = COUNT(right_2."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
					THEN 1
				ELSE 0
			END as "cond"
		FROM
			"Parent" t1
				FULL JOIN (
					SELECT
						right_1."ParentID"
					FROM
						"Parent" right_1
					WHERE
						right_1."ParentID" <> :id
				) right_2 ON right_2."ParentID" = t1."ParentID"
	) t2
WHERE
	ROWNUM <= 2

