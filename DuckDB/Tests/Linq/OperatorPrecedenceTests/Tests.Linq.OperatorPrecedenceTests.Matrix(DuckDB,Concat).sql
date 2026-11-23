-- DuckDB
SELECT
	Coalesce(r.S, '') || CAST(r.A + r.B AS VARCHAR),
	CAST(r.A + r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B + r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A + r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B + r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~r.B + r."C", r."C"),
	Coalesce(r.S, '') || CAST(r.A - r.B AS VARCHAR),
	CAST(r.A - r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B - r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A - r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B - r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~r.B - r."C", r."C"),
	Coalesce(r.S, '') || CAST(r.A * r.B AS VARCHAR),
	CAST(r.A * r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B * r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A * r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B * r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~r.B * r."C", r."C"),
	Coalesce(r.S, '') || CAST(r.A // r.B AS VARCHAR),
	CAST(r.A // r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B // r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A // r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B // r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~r.B // r."C", r."C"),
	Coalesce(r.S, '') || CAST(r.A % r.B AS VARCHAR),
	CAST(r.A % r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B % r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A % r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B % r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~r.B % r."C", r."C"),
	Coalesce(r.S, '') || CAST(r.A & r.B AS VARCHAR),
	CAST(r.A & r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B & r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A & r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B & r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~(r.B & r."C"), r."C"),
	Coalesce(r.S, '') || CAST(r.A | r.B AS VARCHAR),
	CAST(r.A | r.B AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), r.B | r."C", r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(r.A | r.B AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -(r.B | r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~(r.B | r."C"), r."C"),
	Coalesce(r.S, '') || CAST(xor(r.A, r.B) AS VARCHAR),
	CAST(xor(r.A, r.B) AS VARCHAR) || Coalesce(r.S, ''),
	CONCAT_WS(',', Coalesce(r.S, ''), xor(r.B, r."C"), r."C"),
	Coalesce(r.S, '') || Coalesce(r.S, '') || CAST(xor(r.A, r.B) AS VARCHAR),
	CONCAT_WS(',', Coalesce(r.S, ''), -xor(r.B, r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r.S, ''), ~xor(r.B, r."C"), r."C"),
	Coalesce(r.S, '') || CAST(-r.A AS VARCHAR),
	CAST(-r.A AS VARCHAR) || Coalesce(r.S, ''),
	Coalesce(r.S, '') || CAST(~r.A AS VARCHAR),
	CAST(~r.A AS VARCHAR) || Coalesce(r.S, ''),
	Coalesce(r.S, '') || '-5',
	'-5' || Coalesce(r.S, '')
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- DuckDB
SELECT
	Coalesce(r.S, '') || '-5',
	'-5' || Coalesce(r.S, '')
FROM
	PrecedenceRow r
ORDER BY
	r.Id

