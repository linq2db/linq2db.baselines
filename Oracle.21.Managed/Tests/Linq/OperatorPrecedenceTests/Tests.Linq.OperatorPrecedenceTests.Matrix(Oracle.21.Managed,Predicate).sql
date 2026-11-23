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
		WHEN Trunc(r.A / r.B) = r.C THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.C < Trunc(r.A / r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN Trunc(r.A / r.B) BETWEEN r.C AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN Trunc(r.B / r.C) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN Trunc(r.A / r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.S || CAST(Trunc(r.A / r.B) AS VarChar(255)) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Trunc(r.A / r.B) <= r.C AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(Trunc(r.A / r.B), r.N, 0, 1) = 1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN DECODE(r.N, Trunc(r.A / r.B), 0, 1) = 1 THEN 1
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

