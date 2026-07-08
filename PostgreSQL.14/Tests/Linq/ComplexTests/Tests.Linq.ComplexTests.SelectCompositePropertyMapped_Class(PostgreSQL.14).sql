-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
LIMIT 2

