-- YDB Ydb

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Person t1
	) as c1

