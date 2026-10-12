-- YDB Ydb
SELECT
	EXISTS(
		SELECT
			1
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL AND p.Value1 > 1
	) as c1

