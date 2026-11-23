-- Informix.DB2 Informix
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
		WHEN (Nvl(r.S, '') || To_Char(r.A + r.B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.A + r.B
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				r.A + r.B
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + BITNOT(r.B) BETWEEN r.C AND r.A THEN 1
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
		WHEN (Nvl(r.S, '') || To_Char(r.A - r.B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.A - r.B
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				r.A - r.B
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - BITNOT(r.B) BETWEEN r.C AND r.A THEN 1
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
		WHEN (Nvl(r.S, '') || To_Char(r.A * r.B)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.A * r.B
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				r.A * r.B
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * -r.B BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * BITNOT(r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN (r.A / r.B)::Int = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < (r.A / r.B)::Int THEN 1
		ELSE 0
	END,
	CASE
		WHEN (r.A / r.B)::Int BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN (r.B / r.C)::Int AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN (r.A / r.B)::Int IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Nvl(r.S, '') || To_Char((r.A / r.B)::Int)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN (r.A / r.B)::Int <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				(r.A / r.B)::Int
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				(r.A / r.B)::Int
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (r.A / -r.B)::Int BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < Mod(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN Mod(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Nvl(r.S, '') || To_Char(Mod(r.A, r.B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				Mod(r.A, r.B)
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				Mod(r.A, r.B)
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, -r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Mod(r.A, BITNOT(r.B)) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < BitAnd(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN BitAnd(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Nvl(r.S, '') || To_Char(BitAnd(r.A, r.B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				BitAnd(r.A, r.B)
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				BitAnd(r.A, r.B)
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, -r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitAnd(r.A, BITNOT(r.B)) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < BitOr(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN BitOr(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Nvl(r.S, '') || To_Char(BitOr(r.A, r.B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				BitOr(r.A, r.B)
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				BitOr(r.A, r.B)
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, -r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitOr(r.A, BITNOT(r.B)) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < BitXor(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN BitXor(r.B, r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN (Nvl(r.S, '') || To_Char(BitXor(r.A, r.B))) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				BitXor(r.A, r.B)
			FROM table(set{1})
			INTERSECT
			SELECT
				r.N
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				r.N
			FROM table(set{1})
			INTERSECT
			SELECT
				BitXor(r.A, r.B)
			FROM table(set{1})
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, -r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN BitXor(r.A, BITNOT(r.B)) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	r.A * -r.B + r.C,
	r.A * BITNOT(r.B) + r.C,
	r.A * -r.B - r.C,
	r.A * BITNOT(r.B) - r.C,
	(r.A * -r.B) * r.C,
	(r.A * BITNOT(r.B)) * r.C,
	r.A * -r.B + r.C,
	r.A * BITNOT(r.B) + r.C,
	CASE
		WHEN -r.A = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = -r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITNOT(r.A) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C = BITNOT(r.A) THEN 1
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
	PrecedenceRow r
ORDER BY
	r.Id

-- Informix.DB2 Informix
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
	PrecedenceRow r
ORDER BY
	r.Id

