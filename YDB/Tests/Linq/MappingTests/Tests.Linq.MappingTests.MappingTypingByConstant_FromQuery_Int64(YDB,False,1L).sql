-- YDB Ydb
DECLARE $value Int64
SET     $value = 1l

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
DECLARE $value Int64
SET     $value = 2147483648l

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

