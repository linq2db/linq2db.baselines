-- DuckDB
SELECT
	CASE
		WHEN r.A + r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A + r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B + r."C" AND r.A THEN 1
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
		WHEN Coalesce(r.S, '') || CAST(r.A + r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A + r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A - r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A + ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A - r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B - r."C" AND r.A THEN 1
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
		WHEN Coalesce(r.S, '') || CAST(r.A - r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A - r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A + r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A + r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A - ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A - ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A * r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B * r."C" AND r.A THEN 1
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
		WHEN Coalesce(r.S, '') || CAST(r.A * r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A * r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * -r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A * -r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A * ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A * ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A // r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B // r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r.S, '') || CAST(r.A // r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A // r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A // -r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A // -r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A % r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B % r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r.S, '') || CAST(r.A % r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A % r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % -r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A % -r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A % ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A % ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A & r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B & r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r.S, '') || CAST(r.A & r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A & r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & -r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A & -r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A & ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A & ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.B = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < r.A | r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN r.B | r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.B IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r.S, '') || CAST(r.A | r.B AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.B <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | r.B IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM r.A | r.B THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | -r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | -r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A | -r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | ~r.N IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A | ~r.B BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN r.A | ~r.B AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.B) = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" < xor(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.B) BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.A BETWEEN xor(r.B, r."C") AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.B) IN (52, 96, 2, 192, 15, 12, 0, 4, 1) THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.N) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce(r.S, '') || CAST(xor(r.A, r.B) AS VARCHAR) LIKE 'x5%' ESCAPE '~'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.B) <= r."C" AND r.B < r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, r.B) IS DISTINCT FROM r.N THEN 1
		ELSE 0
	END,
	CASE
		WHEN r.N IS DISTINCT FROM xor(r.A, r.B) THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, (-r.N)) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, (-r.B)) BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN xor(r.A, (-r.B)) AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, (~r.N)) IS NULL THEN 1
		ELSE 0
	END,
	CASE
		WHEN xor(r.A, (~r.B)) BETWEEN r."C" AND r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" BETWEEN xor(r.A, (~r.B)) AND r.A THEN 1
		ELSE 0
	END,
	r.A * -r.B + r."C",
	(r.A * ~r.B) + r."C",
	r.A * -r.B - r."C",
	(r.A * ~r.B) - r."C",
	(r.A * -r.B) * r."C",
	(r.A * ~r.B) * r."C",
	r.A * -r.B + r."C",
	(r.A * ~r.B) + r."C",
	CASE
		WHEN -r.A = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN ~r.A = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = ~r.A THEN 1
		ELSE 0
	END,
	CASE
		WHEN -5 = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -5 THEN 1
		ELSE 0
	END
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	CASE
		WHEN -5 = r."C" THEN 1
		ELSE 0
	END,
	CASE
		WHEN r."C" = -5 THEN 1
		ELSE 0
	END
FROM
	PrecedenceRow r
ORDER BY
	r.Id

