-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			Decimal('1', 22, 9) as Value_1
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
			Decimal('2147483648.123', 22, 9) as Value_1
		FROM
			Person r
	) t1

