-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c1,
	Unwrap(CAST(r.A + r.B AS Text)) || Coalesce(r.S, ''u) as c2,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B + r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c3,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c4,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-(r.B + r.C) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c5,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast((r.B + r.C) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c6,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c7,
	Unwrap(CAST(r.A - r.B AS Text)) || Coalesce(r.S, ''u) as c8,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B - r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c9,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c10,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-(r.B - r.C) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c11,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast((r.B - r.C) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c12,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c13,
	Unwrap(CAST(r.A * r.B AS Text)) || Coalesce(r.S, ''u) as c14,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B * r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c15,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c16,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-(r.B * r.C) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c17,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast((r.B * r.C) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c18,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c19,
	Unwrap(CAST(r.A / r.B AS Text)) || Coalesce(r.S, ''u) as c20,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B / r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c21,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c22,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-(r.B / r.C) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c23,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast((r.B / r.C) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c24,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c25,
	Unwrap(CAST(r.A % r.B AS Text)) || Coalesce(r.S, ''u) as c26,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B % r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c27,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c28,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-(r.B % r.C) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c29,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast((r.B % r.C) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c30,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c31,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c32,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c33,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c34,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c35,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c36,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c37,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c38,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c39,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c40,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c41,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c42,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c43,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c44,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c45,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c46,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(-BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c47,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((~BitCast(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c48,
	Coalesce(r.S, ''u) || Unwrap(CAST(-r.A AS Text)) as c49,
	Unwrap(CAST(-r.A AS Text)) || Coalesce(r.S, ''u) as c50,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((~BitCast(r.A AS Uint32)) AS Int32) AS Text)) as c51,
	Unwrap(CAST(BitCast((~BitCast(r.A AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c52,
	Coalesce(r.S, ''u) || '-5'u as c53,
	'-5'u || Coalesce(r.S, ''u) as c54
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || '-5'u as c1,
	'-5'u || Coalesce(r.S, ''u) as c2
FROM
	PrecedenceRow r
ORDER BY
	r.Id

