-- PostgreSQL.18 PostgreSQL

SELECT
	"a_Customer"."Id"
FROM
	"Issue5547CustomerShares" c_1
		INNER JOIN "Issue5355Customers" "a_Customer" ON c_1."CustomerId" = "a_Customer"."Id"
		INNER JOIN "Issue5355LicenseProfiles" "a_Profile" ON "a_Customer"."ProfileId" = "a_Profile"."Id"
WHERE
	c_1."Id" > 0 AND "a_Profile"."License" IN ('12345')
ORDER BY
	"a_Customer"."Id"



