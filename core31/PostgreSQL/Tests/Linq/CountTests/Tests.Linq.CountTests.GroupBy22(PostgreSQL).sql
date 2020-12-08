BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			ch."ParentID" < 2 AND t1."ParentID" = ch."ParentID" + 1 AND ch."ParentID" + 2 > :n
	)
FROM
	(
		SELECT
			ch_1."ParentID" + 1 as "ParentID"
		FROM
			"Child" ch_1
		WHERE
			ch_1."ParentID" + 2 > :n
	) t1
GROUP BY
	t1."ParentID"

