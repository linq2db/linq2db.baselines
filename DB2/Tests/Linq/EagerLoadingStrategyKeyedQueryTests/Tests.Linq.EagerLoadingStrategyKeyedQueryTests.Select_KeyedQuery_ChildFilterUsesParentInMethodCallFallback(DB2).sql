-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"m_1"."Name",
	"d"."Id",
	"d"."CompanyId",
	"d"."Name",
	"d"."IsActive"
FROM
	"Company" "m_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "m_1"."Id" AND "d"."Name" LIKE Replace(Replace(Replace("m_1"."Name", '~', '~~'), '%', '~%'), '_', '~_') || '%' ESCAPE '~'
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

