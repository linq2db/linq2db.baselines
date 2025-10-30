-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	user_1."FirstName",
	user_1."Status"
FROM
	"User" user_1
WHERE
	user_1."Status" IS NULL

