BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	u."Id",
	u."user_name" as "Name",
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"UserStruct" u
WHERE
	u."city" = 'Springwood' AND u."street" = 'Elm Street' AND
	u."building_number" = 13
FETCH NEXT 2 ROWS ONLY

