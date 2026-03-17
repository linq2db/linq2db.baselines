-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Client1"."Name"
FROM
	"Issue4454Service" "s"
		INNER JOIN "Issue4454Client" "a_Client1" ON "s"."IdClient" = "a_Client1"."Id"

