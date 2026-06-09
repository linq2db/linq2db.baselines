-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	COUNT(*) as Count_1
FROM
	(
		SELECT
			1 as c1
		FROM
			Parent t1
		ORDER BY
			t1.ParentID
		LIMIT $take
	) t2

