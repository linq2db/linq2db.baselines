-- PostgreSQL.19 PostgreSQL12
SELECT
	(r."A" + r."B") / r."C",
	r."A" / (r."B" + r."C"),
	(r."A" + r."B") / r."C",
	r."A" / (r."B" + r."C"),
	(r."A" - r."B") / r."C",
	r."A" / (r."B" - r."C"),
	(r."A" - r."B") / r."C",
	r."A" / (r."B" - r."C"),
	r."A" / (r."B" * r."C"),
	r."A" / (r."B" * r."C"),
	r."A" / r."B" / r."C",
	r."A" / (r."B" / r."C"),
	r."A" / r."B" / r."C",
	r."A" / (r."B" / r."C"),
	r."A" / (r."B" # r."C"),
	r."A" / (r."B" # r."C"),
	(r."A" + r."B") / r."C",
	r."A" / (r."B" + r."C"),
	(r."A" + -6) / r."C",
	(r."A" - r."B") / r."C",
	r."A" / (r."B" - r."C"),
	(r."A" - -6) / r."C",
	(r."A" * r."B") / r."C",
	r."A" / (r."B" * r."C"),
	(r."A" * -6) / r."C",
	(r."A" / r."B") / r."C",
	r."A" / (r."B" / r."C"),
	(r."A" / -6) / r."C",
	(r."A" + r."B") / r."C",
	r."A" / (r."B" + r."C"),
	(r."A" + -6) / r."C",
	r."A" / -r."B",
	(r."A" - r."B") / r."C",
	(r."A" + r."B") / r."C",
	r."A" / -r."B" / r."C",
	(r."A" & -r."B") / r."C",
	(r."A" # -r."B") / r."C",
	(r."A" * ~r."B") / r."C",
	r."A" * -5 / r."C",
	(r."A" & -5) / r."C"
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."A" * -5 / r."C",
	(r."A" & -5) / r."C"
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

