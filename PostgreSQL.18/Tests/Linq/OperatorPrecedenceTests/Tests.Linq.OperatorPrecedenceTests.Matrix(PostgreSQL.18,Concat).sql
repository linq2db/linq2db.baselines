-- PostgreSQL.18 PostgreSQL12
SELECT
	Coalesce(r."S", '') || (r."A" + r."B")::text,
	(r."A" + r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" + r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" + r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" + r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~r."B" + r."C", r."C"),
	Coalesce(r."S", '') || (r."A" - r."B")::text,
	(r."A" - r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" - r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" - r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" - r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~r."B" - r."C", r."C"),
	Coalesce(r."S", '') || (r."A" * r."B")::text,
	(r."A" * r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" * r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" * r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" * r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~r."B" * r."C", r."C"),
	Coalesce(r."S", '') || (r."A" / r."B")::text,
	(r."A" / r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" / r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" / r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" / r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~r."B" / r."C", r."C"),
	Coalesce(r."S", '') || Floor(r."A"::decimal % r."B")::Int::text,
	Floor(r."A"::decimal % r."B")::Int::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), Floor(r."B"::decimal % r."C")::Int, r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || Floor(r."A"::decimal % r."B")::Int::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -Floor(r."B"::decimal % r."C")::Int, r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~Floor(r."B"::decimal % r."C")::Int, r."C"),
	Coalesce(r."S", '') || (r."A" & r."B")::text,
	(r."A" & r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" & r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" & r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" & r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~(r."B" & r."C"), r."C"),
	Coalesce(r."S", '') || (r."A" | r."B")::text,
	(r."A" | r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" | r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" | r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" | r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~(r."B" | r."C"), r."C"),
	Coalesce(r."S", '') || (r."A" # r."B")::text,
	(r."A" # r."B")::text || Coalesce(r."S", ''),
	CONCAT_WS(',', Coalesce(r."S", ''), r."B" # r."C", r."C"),
	Coalesce(r."S", '') || Coalesce(r."S", '') || (r."A" # r."B")::text,
	CONCAT_WS(',', Coalesce(r."S", ''), -(r."B" # r."C"), r."C"),
	CONCAT_WS(',', Coalesce(r."S", ''), ~(r."B" # r."C"), r."C"),
	Coalesce(r."S", '') || (-r."A")::text,
	(-r."A")::text || Coalesce(r."S", ''),
	Coalesce(r."S", '') || (~r."A")::text,
	(~r."A")::text || Coalesce(r."S", ''),
	Coalesce(r."S", '') || '-5',
	'-5' || Coalesce(r."S", '')
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	Coalesce(r."S", '') || '-5',
	'-5' || Coalesce(r."S", '')
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

