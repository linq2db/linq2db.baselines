-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
LIMIT 2

