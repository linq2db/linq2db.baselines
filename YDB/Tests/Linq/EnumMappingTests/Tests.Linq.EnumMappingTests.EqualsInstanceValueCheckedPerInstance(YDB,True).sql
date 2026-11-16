-- YDB Ydb
DECLARE Value Text(6) -- AnsiString
SET     Value = 'Female'u

SELECT
	r.Id as Id
FROM
	ConvertedGenderRow r
WHERE
	r.Gender = $Value

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Gender as Gender
FROM
	ConvertedGenderRow t1

