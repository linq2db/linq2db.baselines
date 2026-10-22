-- YDB Ydb
DECLARE $value Text(1) -- AnsiString
SET     $value = '+'u

SELECT
	r.Id as Id,
	r.`Value` as Value_1
FROM
	Issue2362Table r
WHERE
	r.`Value` = $value
ORDER BY
	r.Id

