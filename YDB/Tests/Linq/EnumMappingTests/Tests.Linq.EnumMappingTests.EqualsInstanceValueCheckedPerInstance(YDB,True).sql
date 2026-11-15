-- YDB Ydb
DECLARE Value Text(6) -- AnsiString
SET     Value = 'Female'u

SELECT
	r.Id as Id
FROM
	ConvertedGenderRow r
WHERE
	r.Gender = $Value

