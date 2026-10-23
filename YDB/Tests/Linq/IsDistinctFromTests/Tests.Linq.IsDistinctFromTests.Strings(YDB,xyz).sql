-- YDB Ydb
DECLARE $value Text(3) -- String
SET     $value = 'xyz'u

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.String IS DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Text(3) -- String
SET     $value = 'xyz'u

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableString IS DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Text(3) -- String
SET     $value = 'xyz'u

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.String IS NOT DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Text(3) -- String
SET     $value = 'xyz'u

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableString IS NOT DISTINCT FROM $value

