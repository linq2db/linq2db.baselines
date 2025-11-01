-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
LIMIT 2

