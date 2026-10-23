-- YDB Ydb
DECLARE $take Int32
SET     $take = 4

SELECT DISTINCT
	t1.ParentID as ParentID
FROM
	(
		SELECT
			ch.ParentID as ParentID
		FROM
			Child ch
		ORDER BY
			ch.ParentID
		LIMIT $take
	) t1

