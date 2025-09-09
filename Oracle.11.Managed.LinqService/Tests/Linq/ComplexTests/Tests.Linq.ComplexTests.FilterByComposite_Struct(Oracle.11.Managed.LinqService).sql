BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	u."user_name",
	u."city",
	u."street",
	u."building_number"
FROM
	"UserStruct" u
WHERE
	u."city" = 'Springwood' AND
	u."street" = 'Elm Street' AND
	u."building_number" = 13 AND
	ROWNUM <= 2

