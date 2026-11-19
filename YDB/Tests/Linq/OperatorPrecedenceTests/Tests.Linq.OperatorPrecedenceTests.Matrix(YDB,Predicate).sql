-- YDB Ydb
DECLARE Ids0_1 Int32
SET     Ids0_1 = 52
DECLARE Ids0_2 Int32
SET     Ids0_2 = 96
DECLARE Ids0_3 Int32
SET     Ids0_3 = 2
DECLARE Ids0_4 Int32
SET     Ids0_4 = 192
DECLARE Ids0_5 Int32
SET     Ids0_5 = 15
DECLARE Ids0_6 Int32
SET     Ids0_6 = 12
DECLARE Ids0_7 Int32
SET     Ids0_7 = 0
DECLARE Ids0_8 Int32
SET     Ids0_8 = 4
DECLARE Ids0_9 Int32
SET     Ids0_9 = 1
DECLARE Ids0_1_1 Int32
SET     Ids0_1_1 = 52
DECLARE Ids0_2_1 Int32
SET     Ids0_2_1 = 96
DECLARE Ids0_3_1 Int32
SET     Ids0_3_1 = 2
DECLARE Ids0_4_1 Int32
SET     Ids0_4_1 = 192
DECLARE Ids0_5_1 Int32
SET     Ids0_5_1 = 15
DECLARE Ids0_6_1 Int32
SET     Ids0_6_1 = 12
DECLARE Ids0_7_1 Int32
SET     Ids0_7_1 = 0
DECLARE Ids0_8_1 Int32
SET     Ids0_8_1 = 4
DECLARE Ids0_9_1 Int32
SET     Ids0_9_1 = 1
DECLARE Ids0_1_2 Int32
SET     Ids0_1_2 = 52
DECLARE Ids0_2_2 Int32
SET     Ids0_2_2 = 96
DECLARE Ids0_3_2 Int32
SET     Ids0_3_2 = 2
DECLARE Ids0_4_2 Int32
SET     Ids0_4_2 = 192
DECLARE Ids0_5_2 Int32
SET     Ids0_5_2 = 15
DECLARE Ids0_6_2 Int32
SET     Ids0_6_2 = 12
DECLARE Ids0_7_2 Int32
SET     Ids0_7_2 = 0
DECLARE Ids0_8_2 Int32
SET     Ids0_8_2 = 4
DECLARE Ids0_9_2 Int32
SET     Ids0_9_2 = 1
DECLARE Ids0_1_3 Int32
SET     Ids0_1_3 = 52
DECLARE Ids0_2_3 Int32
SET     Ids0_2_3 = 96
DECLARE Ids0_3_3 Int32
SET     Ids0_3_3 = 2
DECLARE Ids0_4_3 Int32
SET     Ids0_4_3 = 192
DECLARE Ids0_5_3 Int32
SET     Ids0_5_3 = 15
DECLARE Ids0_6_3 Int32
SET     Ids0_6_3 = 12
DECLARE Ids0_7_3 Int32
SET     Ids0_7_3 = 0
DECLARE Ids0_8_3 Int32
SET     Ids0_8_3 = 4
DECLARE Ids0_9_3 Int32
SET     Ids0_9_3 = 1
DECLARE Ids0_1_4 Int32
SET     Ids0_1_4 = 52
DECLARE Ids0_2_4 Int32
SET     Ids0_2_4 = 96
DECLARE Ids0_3_4 Int32
SET     Ids0_3_4 = 2
DECLARE Ids0_4_4 Int32
SET     Ids0_4_4 = 192
DECLARE Ids0_5_4 Int32
SET     Ids0_5_4 = 15
DECLARE Ids0_6_4 Int32
SET     Ids0_6_4 = 12
DECLARE Ids0_7_4 Int32
SET     Ids0_7_4 = 0
DECLARE Ids0_8_4 Int32
SET     Ids0_8_4 = 4
DECLARE Ids0_9_4 Int32
SET     Ids0_9_4 = 1
DECLARE Ids0_1_5 Int32
SET     Ids0_1_5 = 52
DECLARE Ids0_2_5 Int32
SET     Ids0_2_5 = 96
DECLARE Ids0_3_5 Int32
SET     Ids0_3_5 = 2
DECLARE Ids0_4_5 Int32
SET     Ids0_4_5 = 192
DECLARE Ids0_5_5 Int32
SET     Ids0_5_5 = 15
DECLARE Ids0_6_5 Int32
SET     Ids0_6_5 = 12
DECLARE Ids0_7_5 Int32
SET     Ids0_7_5 = 0
DECLARE Ids0_8_5 Int32
SET     Ids0_8_5 = 4
DECLARE Ids0_9_5 Int32
SET     Ids0_9_5 = 1
DECLARE Ids0_1_6 Int32
SET     Ids0_1_6 = 52
DECLARE Ids0_2_6 Int32
SET     Ids0_2_6 = 96
DECLARE Ids0_3_6 Int32
SET     Ids0_3_6 = 2
DECLARE Ids0_4_6 Int32
SET     Ids0_4_6 = 192
DECLARE Ids0_5_6 Int32
SET     Ids0_5_6 = 15
DECLARE Ids0_6_6 Int32
SET     Ids0_6_6 = 12
DECLARE Ids0_7_6 Int32
SET     Ids0_7_6 = 0
DECLARE Ids0_8_6 Int32
SET     Ids0_8_6 = 4
DECLARE Ids0_9_6 Int32
SET     Ids0_9_6 = 1
DECLARE Ids0_1_7 Int32
SET     Ids0_1_7 = 52
DECLARE Ids0_2_7 Int32
SET     Ids0_2_7 = 96
DECLARE Ids0_3_7 Int32
SET     Ids0_3_7 = 2
DECLARE Ids0_4_7 Int32
SET     Ids0_4_7 = 192
DECLARE Ids0_5_7 Int32
SET     Ids0_5_7 = 15
DECLARE Ids0_6_7 Int32
SET     Ids0_6_7 = 12
DECLARE Ids0_7_7 Int32
SET     Ids0_7_7 = 0
DECLARE Ids0_8_7 Int32
SET     Ids0_8_7 = 4
DECLARE Ids0_9_7 Int32
SET     Ids0_9_7 = 1

SELECT
	CASE
		WHEN r.A + r.B = r.C THEN 1
		ELSE 0
	END as c1,
	CASE
		WHEN r.C < r.A + r.B THEN 1
		ELSE 0
	END as c2,
	CASE
		WHEN r.A + r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END as c3,
	CASE
		WHEN r.A BETWEEN r.B + r.C AND r.A THEN 1
		ELSE 0
	END as c4,
	CASE
		WHEN r.A + r.B IN ($Ids0_1, $Ids0_2, $Ids0_3, $Ids0_4, $Ids0_5, $Ids0_6, $Ids0_7, $Ids0_8, $Ids0_9)
			THEN 1
		ELSE 0
	END as c5,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c6,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c7,
	CASE
		WHEN r.A + r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END as c8,
	CASE
		WHEN r.A - r.B = r.C THEN 1
		ELSE 0
	END as c9,
	CASE
		WHEN r.C < r.A - r.B THEN 1
		ELSE 0
	END as c10,
	CASE
		WHEN r.A - r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END as c11,
	CASE
		WHEN r.A BETWEEN r.B - r.C AND r.A THEN 1
		ELSE 0
	END as c12,
	CASE
		WHEN r.A - r.B IN ($Ids0_1_1, $Ids0_2_1, $Ids0_3_1, $Ids0_4_1, $Ids0_5_1, $Ids0_6_1, $Ids0_7_1, $Ids0_8_1, $Ids0_9_1)
			THEN 1
		ELSE 0
	END as c13,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c14,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c15,
	CASE
		WHEN r.A - r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END as c16,
	CASE
		WHEN r.A * r.B = r.C THEN 1
		ELSE 0
	END as c17,
	CASE
		WHEN r.C < r.A * r.B THEN 1
		ELSE 0
	END as c18,
	CASE
		WHEN r.A * r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END as c19,
	CASE
		WHEN r.A BETWEEN r.B * r.C AND r.A THEN 1
		ELSE 0
	END as c20,
	CASE
		WHEN r.A * r.B IN ($Ids0_1_2, $Ids0_2_2, $Ids0_3_2, $Ids0_4_2, $Ids0_5_2, $Ids0_6_2, $Ids0_7_2, $Ids0_8_2, $Ids0_9_2)
			THEN 1
		ELSE 0
	END as c21,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c22,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c23,
	CASE
		WHEN r.A * r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END as c24,
	CASE
		WHEN r.A / r.B = r.C THEN 1
		ELSE 0
	END as c25,
	CASE
		WHEN r.C < r.A / r.B THEN 1
		ELSE 0
	END as c26,
	CASE
		WHEN r.A / r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END as c27,
	CASE
		WHEN r.A BETWEEN r.B / r.C AND r.A THEN 1
		ELSE 0
	END as c28,
	CASE
		WHEN r.A / r.B IN ($Ids0_1_3, $Ids0_2_3, $Ids0_3_3, $Ids0_4_3, $Ids0_5_3, $Ids0_6_3, $Ids0_7_3, $Ids0_8_3, $Ids0_9_3)
			THEN 1
		ELSE 0
	END as c29,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c30,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c31,
	CASE
		WHEN r.A / r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END as c32,
	CASE
		WHEN r.A % r.B = r.C THEN 1
		ELSE 0
	END as c33,
	CASE
		WHEN r.C < r.A % r.B THEN 1
		ELSE 0
	END as c34,
	CASE
		WHEN r.A % r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END as c35,
	CASE
		WHEN r.A BETWEEN r.B % r.C AND r.A THEN 1
		ELSE 0
	END as c36,
	CASE
		WHEN r.A % r.B IN ($Ids0_1_4, $Ids0_2_4, $Ids0_3_4, $Ids0_4_4, $Ids0_5_4, $Ids0_6_4, $Ids0_7_4, $Ids0_8_4, $Ids0_9_4)
			THEN 1
		ELSE 0
	END as c37,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c38,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c39,
	CASE
		WHEN r.A % r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END as c40,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) = r.C
			THEN 1
		ELSE 0
	END as c41,
	CASE
		WHEN r.C < (Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)))
			THEN 1
		ELSE 0
	END as c42,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) BETWEEN r.C AND r.A
			THEN 1
		ELSE 0
	END as c43,
	CASE
		WHEN r.A BETWEEN (Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32))) AND r.A
			THEN 1
		ELSE 0
	END as c44,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) IN ($Ids0_1_5, $Ids0_2_5, $Ids0_3_5, $Ids0_4_5, $Ids0_5_5, $Ids0_6_5, $Ids0_7_5, $Ids0_8_5, $Ids0_9_5)
			THEN 1
		ELSE 0
	END as c45,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END as c46,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c47,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) <= r.C AND r.B < r.A
			THEN 1
		ELSE 0
	END as c48,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) = r.C
			THEN 1
		ELSE 0
	END as c49,
	CASE
		WHEN r.C < (Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)))
			THEN 1
		ELSE 0
	END as c50,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) BETWEEN r.C AND r.A
			THEN 1
		ELSE 0
	END as c51,
	CASE
		WHEN r.A BETWEEN (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) AND r.A
			THEN 1
		ELSE 0
	END as c52,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) IN ($Ids0_1_6, $Ids0_2_6, $Ids0_3_6, $Ids0_4_6, $Ids0_5_6, $Ids0_6_6, $Ids0_7_6, $Ids0_8_6, $Ids0_9_6)
			THEN 1
		ELSE 0
	END as c53,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) | CAST(r.N AS Uint32)) IS NULL
			THEN 1
		ELSE 0
	END as c54,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c55,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) <= r.C AND r.B < r.A
			THEN 1
		ELSE 0
	END as c56,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) = r.C
			THEN 1
		ELSE 0
	END as c57,
	CASE
		WHEN r.C < (Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)))
			THEN 1
		ELSE 0
	END as c58,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) BETWEEN r.C AND r.A
			THEN 1
		ELSE 0
	END as c59,
	CASE
		WHEN r.A BETWEEN (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) AND r.A
			THEN 1
		ELSE 0
	END as c60,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) IN ($Ids0_1_7, $Ids0_2_7, $Ids0_3_7, $Ids0_4_7, $Ids0_5_7, $Ids0_6_7, $Ids0_7_7, $Ids0_8_7, $Ids0_9_7)
			THEN 1
		ELSE 0
	END as c61,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) ^ CAST(r.N AS Uint32)) IS NULL
			THEN 1
		ELSE 0
	END as c62,
	CASE
		WHEN (Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text))) LIKE 'x5%'u ESCAPE '~'s
			THEN 1
		ELSE 0
	END as c63,
	CASE
		WHEN (Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) <= r.C AND r.B < r.A
			THEN 1
		ELSE 0
	END as c64,
	CASE
		WHEN -r.A = r.C THEN 1
		ELSE 0
	END as c65,
	CASE
		WHEN r.C = -r.A THEN 1
		ELSE 0
	END as c66,
	CASE
		WHEN (~Unwrap(CAST(r.A AS Uint32))) = r.C THEN 1
		ELSE 0
	END as c67,
	CASE
		WHEN r.C = (~Unwrap(CAST(r.A AS Uint32))) THEN 1
		ELSE 0
	END as c68,
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END as c69,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END as c70
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END as c1,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END as c2
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Predicate/Eq(Add(a,b),c): green
-- cell Predicate/Lt(c,Add(a,b)): green
-- cell Predicate/Between(Add(a,b),c,a): green
-- cell Predicate/Between(a,Add(b,c),a): green
-- cell Predicate/In(Add(a,b)): green
-- cell Predicate/IsNull(Add(a,n)): green
-- cell Predicate/Like(Concat(s,Add(a,b))): green
-- cell Predicate/NotAnd(Add(a,b)): green
-- cell Predicate/Eq(Sub(a,b),c): green
-- cell Predicate/Lt(c,Sub(a,b)): green
-- cell Predicate/Between(Sub(a,b),c,a): green
-- cell Predicate/Between(a,Sub(b,c),a): green
-- cell Predicate/In(Sub(a,b)): green
-- cell Predicate/IsNull(Sub(a,n)): green
-- cell Predicate/Like(Concat(s,Sub(a,b))): green
-- cell Predicate/NotAnd(Sub(a,b)): green
-- cell Predicate/Eq(Mul(a,b),c): green
-- cell Predicate/Lt(c,Mul(a,b)): green
-- cell Predicate/Between(Mul(a,b),c,a): green
-- cell Predicate/Between(a,Mul(b,c),a): green
-- cell Predicate/In(Mul(a,b)): green
-- cell Predicate/IsNull(Mul(a,n)): green
-- cell Predicate/Like(Concat(s,Mul(a,b))): green
-- cell Predicate/NotAnd(Mul(a,b)): green
-- cell Predicate/Eq(Div(a,b),c): green
-- cell Predicate/Lt(c,Div(a,b)): green
-- cell Predicate/Between(Div(a,b),c,a): green
-- cell Predicate/Between(a,Div(b,c),a): green
-- cell Predicate/In(Div(a,b)): green
-- cell Predicate/IsNull(Div(a,n)): green
-- cell Predicate/Like(Concat(s,Div(a,b))): green
-- cell Predicate/NotAnd(Div(a,b)): green
-- cell Predicate/Eq(Mod(a,b),c): green
-- cell Predicate/Lt(c,Mod(a,b)): green
-- cell Predicate/Between(Mod(a,b),c,a): green
-- cell Predicate/Between(a,Mod(b,c),a): green
-- cell Predicate/In(Mod(a,b)): green
-- cell Predicate/IsNull(Mod(a,n)): green
-- cell Predicate/Like(Concat(s,Mod(a,b))): green
-- cell Predicate/NotAnd(Mod(a,b)): green
-- cell Predicate/Eq(And(a,b),c): green
-- cell Predicate/Lt(c,And(a,b)): green
-- cell Predicate/Between(And(a,b),c,a): green
-- cell Predicate/Between(a,And(b,c),a): green
-- cell Predicate/In(And(a,b)): green
-- cell Predicate/IsNull(And(a,n)): green
-- cell Predicate/Like(Concat(s,And(a,b))): green
-- cell Predicate/NotAnd(And(a,b)): green
-- cell Predicate/Eq(Or(a,b),c): green
-- cell Predicate/Lt(c,Or(a,b)): green
-- cell Predicate/Between(Or(a,b),c,a): green
-- cell Predicate/Between(a,Or(b,c),a): green
-- cell Predicate/In(Or(a,b)): green
-- cell Predicate/IsNull(Or(a,n)): green
-- cell Predicate/Like(Concat(s,Or(a,b))): green
-- cell Predicate/NotAnd(Or(a,b)): green
-- cell Predicate/Eq(Xor(a,b),c): green
-- cell Predicate/Lt(c,Xor(a,b)): green
-- cell Predicate/Between(Xor(a,b),c,a): green
-- cell Predicate/Between(a,Xor(b,c),a): green
-- cell Predicate/In(Xor(a,b)): green
-- cell Predicate/IsNull(Xor(a,n)): green
-- cell Predicate/Like(Concat(s,Xor(a,b))): green
-- cell Predicate/NotAnd(Xor(a,b)): green
-- cell Predicate/Eq(Neg(a),c): green
-- cell Predicate/Eq(c,Neg(a)): green
-- cell Predicate/Eq(Not(a),c): green
-- cell Predicate/Eq(c,Not(a)): green
-- cell Predicate/Eq(NegLit(a),c): green
-- cell Predicate/Eq(c,NegLit(a)): green
-- cell Predicate/Eq(NegParam(a),c): green
-- cell Predicate/Eq(c,NegParam(a)): green
