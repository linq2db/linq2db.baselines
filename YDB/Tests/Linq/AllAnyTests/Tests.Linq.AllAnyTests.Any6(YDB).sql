-- YDB Ydb

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child c_1
		WHERE
			c_1.ParentID > 3
	) as c1

