-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			1u as Value_1
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
			2147483648u as Value_1
		FROM
			Person r
	) t1

