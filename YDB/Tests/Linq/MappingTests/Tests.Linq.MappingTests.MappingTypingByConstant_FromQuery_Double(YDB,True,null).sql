-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST(NULL AS Double) as Value_1
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
			Double('3147483648') as Value_1
		FROM
			Person r
	) t1

