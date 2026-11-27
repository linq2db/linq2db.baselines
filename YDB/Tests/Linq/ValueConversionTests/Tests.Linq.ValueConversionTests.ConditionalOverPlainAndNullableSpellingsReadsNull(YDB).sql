-- YDB Ydb
SELECT
	CASE
		WHEN r.Id = 1 THEN r.Plain
		ELSE r.`Date`
	END as c1
FROM
	ShiftedDateRow r
ORDER BY
	r.Id

