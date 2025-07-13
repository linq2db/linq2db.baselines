BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT
	t2."cond"
FROM
	(
		SELECT
			CASE
				WHEN COUNT(t1."ParentID") = COUNT(right_1."ParentID") AND COUNT(t1."ParentID") = COUNT(*)
					THEN 1
				ELSE 0
			END as "cond"
		FROM
			(
				SELECT
					p."ParentID"
				FROM
					"Parent" p
				WHERE
					p."ParentID" <> :id
			) t1
				FULL JOIN "Parent" right_1 ON right_1."ParentID" = t1."ParentID"
	) t2
WHERE
	ROWNUM <= 2

