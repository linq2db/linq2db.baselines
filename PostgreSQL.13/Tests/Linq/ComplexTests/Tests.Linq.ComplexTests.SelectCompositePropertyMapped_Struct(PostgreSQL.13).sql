BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"UserStruct" u
LIMIT 2

