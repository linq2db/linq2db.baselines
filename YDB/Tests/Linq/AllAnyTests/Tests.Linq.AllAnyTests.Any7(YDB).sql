-- YDB Ydb

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Child t1
	) as c1

