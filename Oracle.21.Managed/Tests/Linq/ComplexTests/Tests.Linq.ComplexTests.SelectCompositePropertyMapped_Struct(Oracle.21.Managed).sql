BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"UserStruct" u
FETCH NEXT 2 ROWS ONLY

