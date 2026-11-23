-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor((r."A" + r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" + r."C"))::Int,
	Floor((r."A" + r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" + r."C"))::Int,
	Floor((r."A" - r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" - r."C"))::Int,
	Floor((r."A" - r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" - r."C"))::Int,
	Floor((r."A" / r."B")::decimal % r."C")::Int,
	Floor((r."A" / r."B")::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % r."B")::Int::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % r."B")::Int::decimal % r."C")::Int,
	Floor((r."A" & r."B")::decimal % r."C")::Int,
	Floor((r."A" & r."B")::decimal % r."C")::Int,
	Floor((r."A" | r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" | r."C"))::Int,
	Floor((r."A" | r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" | r."C"))::Int,
	Floor((r."A" # r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" # r."C"))::Int,
	Floor((r."A" # r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" # r."C"))::Int,
	Floor((r."A" + r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" + r."C"))::Int,
	Floor((r."A" + -6)::decimal % r."C")::Int,
	Floor((r."A" - r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" - r."C"))::Int,
	Floor((r."A" - -6)::decimal % r."C")::Int,
	Floor((r."A" * r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" * r."C"))::Int,
	Floor((r."A" * -6)::decimal % r."C")::Int,
	Floor((r."A" / r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" / r."C"))::Int,
	Floor((r."A" / -6)::decimal % r."C")::Int,
	Floor((r."A" + r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (r."B" + r."C"))::Int,
	Floor((r."A" + -6)::decimal % r."C")::Int,
	Floor(r."A"::decimal % -r."B")::Int,
	Floor((r."A" - r."B")::decimal % r."C")::Int,
	Floor((r."A" + r."B")::decimal % r."C")::Int,
	Floor((r."A" / -r."B")::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % -r."B")::Int::decimal % r."C")::Int,
	Floor((r."A" | -r."B")::decimal % r."C")::Int,
	Floor((r."A" # -r."B")::decimal % r."C")::Int,
	Floor(r."A"::decimal % (~r."B"))::Int,
	Floor((r."A" + (~r."B"))::decimal % r."C")::Int,
	Floor((r."A" - (~r."B"))::decimal % r."C")::Int,
	Floor((r."A" * (~r."B"))::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % (~r."B"))::Int::decimal % r."C")::Int,
	Floor((r."A" & (~r."B"))::decimal % r."C")::Int,
	Floor((r."A" | (~r."B"))::decimal % r."C")::Int,
	Floor((r."A" # (~r."B"))::decimal % r."C")::Int,
	Floor(r."A"::decimal % -5)::Int,
	Floor((-5)::decimal % r."C")::Int,
	Floor((r."A" + -5)::decimal % r."C")::Int,
	Floor((r."A" - -5)::decimal % r."C")::Int,
	Floor((r."A" * -5)::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % -5)::Int::decimal % r."C")::Int,
	Floor((r."A" & -5)::decimal % r."C")::Int,
	Floor((r."A" | -5)::decimal % r."C")::Int,
	Floor((r."A" # -5)::decimal % r."C")::Int
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Floor(r."A"::decimal % -5)::Int,
	Floor((-5)::decimal % r."C")::Int,
	Floor((r."A" + -5)::decimal % r."C")::Int,
	Floor((r."A" - -5)::decimal % r."C")::Int,
	Floor((r."A" * -5)::decimal % r."C")::Int,
	Floor(Floor(r."A"::decimal % -5)::Int::decimal % r."C")::Int,
	Floor((r."A" & -5)::decimal % r."C")::Int,
	Floor((r."A" | -5)::decimal % r."C")::Int,
	Floor((r."A" # -5)::decimal % r."C")::Int
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

