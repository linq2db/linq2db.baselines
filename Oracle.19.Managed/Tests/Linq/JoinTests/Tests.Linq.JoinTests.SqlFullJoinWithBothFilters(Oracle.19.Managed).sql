BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 2

SELECT
	t1."ParentID",
	right_2."ParentID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) t1
		FULL JOIN (
			SELECT
				right_1."ParentID"
			FROM
				"Parent" right_1
			WHERE
				right_1."ParentID" <> :id2
		) right_2 ON right_2."ParentID" = t1."ParentID"
ORDER BY
	CASE
		WHEN t1."ParentID" IS NOT NULL
			THEN t1."ParentID"
		ELSE NULL
	END

