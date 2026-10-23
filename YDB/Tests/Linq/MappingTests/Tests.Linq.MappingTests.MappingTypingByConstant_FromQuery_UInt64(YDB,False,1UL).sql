-- YDB Ydb
DECLARE $value Uint64 -- UInt64
SET     $value = 1ul

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
DECLARE $value Uint64 -- UInt64
SET     $value = 2147483648ul

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

