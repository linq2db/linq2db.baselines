-- YDB Ydb
DECLARE $value Decimal
SET     $value = NULL

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			$value as Value_1
		FROM
			Person r
	) t1

-- YDB Ydb
DECLARE $value Decimal(13, 3)
SET     $value = Decimal('2147483648.123', 22, 9)

SELECT
	t1.ID as ID,
	t1.Value_1 as Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			$value as Value_1
		FROM
			Person r
	) t1

