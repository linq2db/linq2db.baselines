-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT DISTINCT
	u."city",
	u."street",
	u."building_number"
FROM
	"UserStruct" u
FETCH NEXT 2 ROWS ONLY

