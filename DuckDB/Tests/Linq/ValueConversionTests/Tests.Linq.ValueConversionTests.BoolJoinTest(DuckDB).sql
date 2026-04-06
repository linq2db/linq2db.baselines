-- DuckDB
DECLARE $true_value NVarChar(1) -- String
SET     $true_value = 'Y'

SELECT
	t1.Enum
FROM
	ValueConversion t1
		INNER JOIN (
			SELECT
				1 as c1
			FROM
				ValueConversion t2
			WHERE
				t2.BoolValue = CAST($true_value AS VARCHAR)
		) t2_1 ON t1.BoolValue = CAST($true_value AS VARCHAR)

