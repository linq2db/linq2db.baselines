-- YDB Ydb
DECLARE $true_value Text(1) -- AnsiString
SET     $true_value = 'Y'u

SELECT
	t1.`Enum` as `Enum`
FROM
	ValueConversion t1
		CROSS JOIN (
			SELECT
				1 as c1
			FROM
				ValueConversion t2
			WHERE
				t2.BoolValue = $true_value
		) t2_1
WHERE
	t1.BoolValue = $true_value

