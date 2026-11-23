-- PostgreSQL.9.3 PostgreSQL
SELECT
	~r."A" + r."B",
	~r."A" + r."B",
	~r."A" - r."B",
	~r."A" - r."B",
	~r."A" * r."B",
	~r."A" * r."B",
	~r."A" / r."B",
	~r."A" / r."B",
	~(r."A" & r."B"),
	~(r."A" & r."B"),
	~(r."A" | r."B"),
	~(r."A" | r."B"),
	~(-r."B"),
	~(~r."B"),
	~(-5),
	~(-5 * r."B")
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	~(-5)
FROM
	"PrecedenceRow" r
ORDER BY
	r."Id"

