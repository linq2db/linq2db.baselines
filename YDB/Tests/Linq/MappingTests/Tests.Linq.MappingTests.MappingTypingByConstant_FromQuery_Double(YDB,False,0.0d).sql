-- YDB Ydb
DECLARE $value Double
SET     $value = Double('0')

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
DECLARE $value Double
SET     $value = Double('3147483648')

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

