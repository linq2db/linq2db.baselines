BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
WHERE
	u.city = 'Springwood' AND u.street = 'Elm Street' AND
	u.building_number = 13
LIMIT 2

