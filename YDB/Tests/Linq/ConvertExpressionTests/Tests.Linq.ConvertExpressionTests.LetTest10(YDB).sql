-- YDB Ydb

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Parent p
	) as c1

