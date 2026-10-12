-- YDB Ydb
SELECT
	NOT EXISTS(
		SELECT
			1
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL AND p.Value1 <= 0
	) as c1

