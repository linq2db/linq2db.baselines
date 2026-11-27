-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Unwrap(CAST(e.Value1 AS Text)), Coalesce(e.Name, ''u), Unwrap(CAST(e.Id AS Text)))), ','u) as c1
FROM
	JoinProbeEntity e

