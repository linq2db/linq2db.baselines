-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	u."Id",
	u."user_name" as "Name",
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"User" u
WHERE
	u."city" = 'Springwood' AND u."street" = 'Elm Street' AND
	u."building_number" = 13
FETCH NEXT 2 ROWS ONLY

