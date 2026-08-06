-- YDB Ydb
DECLARE $n Int32
SET     $n = 3

SELECT
	NOT EXISTS(
		SELECT
			1
		FROM
			Child c_1
		WHERE
			c_1.ParentID <= $n
	) as c1

