-- YDB Ydb
SELECT
	CASE
		WHEN r.Id = 1 THEN r.Plain
		ELSE r.`Date`
	END as c1
FROM
	Issue5975Row r
ORDER BY
	r.Id

