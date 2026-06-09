-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child c_1
		WHERE
			c_1.ParentID = $p
	) as c1

-- YDB Ydb
DECLARE $p Int32
SET     $p = -1

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child c_1
		WHERE
			c_1.ParentID = $p
	) as c1

