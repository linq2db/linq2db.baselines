-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	u."city",
	u."street",
	u."building_number"
FROM
	"User" u
FETCH NEXT 2 ROWS ONLY

