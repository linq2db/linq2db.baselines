BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	"UserStruct" u
LIMIT 2

