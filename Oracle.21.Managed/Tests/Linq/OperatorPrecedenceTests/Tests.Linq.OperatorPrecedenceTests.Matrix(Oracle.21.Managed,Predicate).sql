-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN r.A + r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A + r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B + r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A + r.B AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A + r.B, r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A + r.B, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A - r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B - r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A - r.B AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A - r.B, r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A - r.B, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A * r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B * r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A * r.B AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A * r.B, r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A * r.B, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A / r.B = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A / r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A / r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B / r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A / r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A / r.B AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A / r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A / r.B, r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A / r.B, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < MOD(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN MOD(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(MOD(r.A, r.B) AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN MOD(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(MOD(r.A, r.B), r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, MOD(r.A, r.B), 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < BITAND(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN BITAND(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(BITAND(r.A, r.B) AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(BITAND(r.A, r.B), r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, BITAND(r.A, r.B), 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A + r.B - BITAND(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B + r.C - BITAND(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A + r.B - BITAND(r.A, r.B) AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A + r.B - BITAND(r.A, r.B), r.N, 0, 1) = 1
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A + r.B - BITAND(r.A, r.B), 0, 1) = 1
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) * 2 = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < r.A + r.B - BITAND(r.A, r.B) * 2 THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) * 2 BETWEEN r.C AND r.A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B + r.C - BITAND(r.B, r.C) * 2 AND r.A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) * 2 IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(r.A + r.B - BITAND(r.A, r.B) * 2 AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B - BITAND(r.A, r.B) * 2 <= r.C AND r.B < r.A
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.A + r.B - BITAND(r.A, r.B) * 2, r.N, 0, 1) = 1
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, r.A + r.B - BITAND(r.A, r.B) * 2, 0, 1) = 1
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.A = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN -1 - r.A = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -1 - r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CASE
		WHEN -5 = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -5 THEN 1
		ELSE 0
	END
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- cell Predicate/Eq(Add(a,b),c): green
-- cell Predicate/Lt(c,Add(a,b)): green
-- cell Predicate/Between(Add(a,b),c,a): green
-- cell Predicate/Between(a,Add(b,c),a): green
-- cell Predicate/In(Add(a,b)): green
-- cell Predicate/IsNull(Add(a,n)): green
-- cell Predicate/Like(Concat(s,Add(a,b))): green
-- cell Predicate/NotAnd(Add(a,b)): green
-- cell Predicate/Distinct(Add(a,b),n): green
-- cell Predicate/Distinct(n,Add(a,b)): green
-- cell Predicate/Eq(Sub(a,b),c): green
-- cell Predicate/Lt(c,Sub(a,b)): green
-- cell Predicate/Between(Sub(a,b),c,a): green
-- cell Predicate/Between(a,Sub(b,c),a): green
-- cell Predicate/In(Sub(a,b)): green
-- cell Predicate/IsNull(Sub(a,n)): green
-- cell Predicate/Like(Concat(s,Sub(a,b))): green
-- cell Predicate/NotAnd(Sub(a,b)): green
-- cell Predicate/Distinct(Sub(a,b),n): green
-- cell Predicate/Distinct(n,Sub(a,b)): green
-- cell Predicate/Eq(Mul(a,b),c): green
-- cell Predicate/Lt(c,Mul(a,b)): green
-- cell Predicate/Between(Mul(a,b),c,a): green
-- cell Predicate/Between(a,Mul(b,c),a): green
-- cell Predicate/In(Mul(a,b)): green
-- cell Predicate/IsNull(Mul(a,n)): green
-- cell Predicate/Like(Concat(s,Mul(a,b))): green
-- cell Predicate/NotAnd(Mul(a,b)): green
-- cell Predicate/Distinct(Mul(a,b),n): green
-- cell Predicate/Distinct(n,Mul(a,b)): green
-- cell Predicate/Eq(Div(a,b),c): green
-- cell Predicate/Lt(c,Div(a,b)): green
-- cell Predicate/Between(Div(a,b),c,a): green
-- cell Predicate/Between(a,Div(b,c),a): green
-- cell Predicate/In(Div(a,b)): green
-- cell Predicate/IsNull(Div(a,n)): green
-- cell Predicate/Like(Concat(s,Div(a,b))): green
-- cell Predicate/NotAnd(Div(a,b)): green
-- cell Predicate/Distinct(Div(a,b),n): green
-- cell Predicate/Distinct(n,Div(a,b)): green
-- cell Predicate/Eq(Mod(a,b),c): green
-- cell Predicate/Lt(c,Mod(a,b)): green
-- cell Predicate/Between(Mod(a,b),c,a): green
-- cell Predicate/Between(a,Mod(b,c),a): green
-- cell Predicate/In(Mod(a,b)): green
-- cell Predicate/IsNull(Mod(a,n)): green
-- cell Predicate/Like(Concat(s,Mod(a,b))): green
-- cell Predicate/NotAnd(Mod(a,b)): green
-- cell Predicate/Distinct(Mod(a,b),n): green
-- cell Predicate/Distinct(n,Mod(a,b)): green
-- cell Predicate/Eq(And(a,b),c): green
-- cell Predicate/Lt(c,And(a,b)): green
-- cell Predicate/Between(And(a,b),c,a): green
-- cell Predicate/Between(a,And(b,c),a): green
-- cell Predicate/In(And(a,b)): green
-- cell Predicate/IsNull(And(a,n)): green
-- cell Predicate/Like(Concat(s,And(a,b))): green
-- cell Predicate/NotAnd(And(a,b)): green
-- cell Predicate/Distinct(And(a,b),n): green
-- cell Predicate/Distinct(n,And(a,b)): green
-- cell Predicate/Eq(Or(a,b),c): green
-- cell Predicate/Lt(c,Or(a,b)): green
-- cell Predicate/Between(Or(a,b),c,a): green
-- cell Predicate/Between(a,Or(b,c),a): green
-- cell Predicate/In(Or(a,b)): green
-- cell Predicate/IsNull(Or(a,n)): green
-- cell Predicate/Like(Concat(s,Or(a,b))): green
-- cell Predicate/NotAnd(Or(a,b)): green
-- cell Predicate/Distinct(Or(a,b),n): green
-- cell Predicate/Distinct(n,Or(a,b)): green
-- cell Predicate/Eq(Xor(a,b),c): green
-- cell Predicate/Lt(c,Xor(a,b)): green
-- cell Predicate/Between(Xor(a,b),c,a): green
-- cell Predicate/Between(a,Xor(b,c),a): green
-- cell Predicate/In(Xor(a,b)): green
-- cell Predicate/IsNull(Xor(a,n)): green
-- cell Predicate/Like(Concat(s,Xor(a,b))): green
-- cell Predicate/NotAnd(Xor(a,b)): green
-- cell Predicate/Distinct(Xor(a,b),n): green
-- cell Predicate/Distinct(n,Xor(a,b)): green
-- cell Predicate/Eq(Neg(a),c): green
-- cell Predicate/Eq(c,Neg(a)): green
-- cell Predicate/Eq(Not(a),c): green
-- cell Predicate/Eq(c,Not(a)): green
-- cell Predicate/Eq(NegLit(a),c): green
-- cell Predicate/Eq(c,NegLit(a)): green
-- cell Predicate/Eq(NegParam(a),c): green
-- cell Predicate/Eq(c,NegParam(a)): green
