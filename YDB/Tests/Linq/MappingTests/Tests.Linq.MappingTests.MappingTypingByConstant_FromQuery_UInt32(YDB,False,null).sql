-- YDB Ydb
DECLARE $value Uint32 -- UInt32
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
DECLARE $value Uint32 -- UInt32
SET     $value = 2147483648u

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

