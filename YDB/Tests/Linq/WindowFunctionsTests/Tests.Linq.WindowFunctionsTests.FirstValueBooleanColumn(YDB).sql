-- YDB Ydb
SELECT
	t.Id as Id,
	FIRST_VALUE(t.BoolValue) OVER (ORDER BY t.Id DESC) as Column_1,
	FIRST_VALUE(t.NullableBoolValue) OVER (ORDER BY t.Id DESC) as Nullable_1,
	FIRST_VALUE(t.IntValue % 20 = 0) OVER (ORDER BY t.Id DESC) as Predicate
FROM
	WindowFunctionTestEntity t
ORDER BY
	t.Id

