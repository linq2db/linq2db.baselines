-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"m_1"."Name",
	"d"."Id",
	"d"."CompanyId",
	"d"."Name",
	"d"."IsActive"
FROM
	"Company" "m_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "m_1"."Id" AND "d"."Name" STARTING WITH "m_1"."Name"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.5 Firebird4

SELECT
	"c_1"."Id",
	"c_1"."Name"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

