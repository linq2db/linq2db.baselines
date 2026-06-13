-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			Float('0') as Value_1
		FROM
			Person r
	) t1

-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			Float('3.14748365E+09') as Value_1
		FROM
			Person r
	) t1

