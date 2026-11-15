-- YDB Ydb
SELECT
	x.Id as Id,
	ROW_NUMBER() OVER (ORDER BY CASE
		WHEN x.NullableIntValue IS NULL THEN NULL
		WHEN x.NullableIntValue > 40 THEN true
		ELSE false
	END, x.Id) as ByOrder
FROM
	WindowFunctionTestEntity x
ORDER BY
	x.Id

