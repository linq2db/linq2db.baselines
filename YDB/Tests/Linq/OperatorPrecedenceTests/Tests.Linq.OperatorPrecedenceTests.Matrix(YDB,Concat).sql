-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c1,
	Unwrap(CAST(r.A + r.B AS Text)) || Coalesce(r.S, ''u) as c2,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B + r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c3,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c4,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c5,
	Unwrap(CAST(r.A - r.B AS Text)) || Coalesce(r.S, ''u) as c6,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B - r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c7,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c8,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c9,
	Unwrap(CAST(r.A * r.B AS Text)) || Coalesce(r.S, ''u) as c10,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B * r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c11,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c12,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c13,
	Unwrap(CAST(r.A / r.B AS Text)) || Coalesce(r.S, ''u) as c14,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B / r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c15,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c16,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c17,
	Unwrap(CAST(r.A % r.B AS Text)) || Coalesce(r.S, ''u) as c18,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B % r.C AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c19,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c20,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c21,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c22,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c23,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c24,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c25,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c26,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c27,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c28,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c29,
	Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c30,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Text)), Unwrap(CAST(r.C AS Text)))), ','u) as c31,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Text)) as c32,
	Coalesce(r.S, ''u) || Unwrap(CAST(-r.A AS Text)) as c33,
	Unwrap(CAST(-r.A AS Text)) || Coalesce(r.S, ''u) as c34,
	Coalesce(r.S, ''u) || Unwrap(CAST(BitCast((~BitCast(r.A AS Uint32)) AS Int32) AS Text)) as c35,
	Unwrap(CAST(BitCast((~BitCast(r.A AS Uint32)) AS Int32) AS Text)) || Coalesce(r.S, ''u) as c36,
	Coalesce(r.S, ''u) || '-5'u as c37,
	'-5'u || Coalesce(r.S, ''u) as c38
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

