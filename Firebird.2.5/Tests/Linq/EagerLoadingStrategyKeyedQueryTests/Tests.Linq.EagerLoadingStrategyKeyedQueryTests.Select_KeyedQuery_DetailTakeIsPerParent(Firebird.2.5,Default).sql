-- Firebird.2.5 Firebird
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."CompanyId",
	"d"."Name",
	"d"."IsActive"
FROM
	"Company" "m_1"
		INNER JOIN "Department" "d" ON "d"."CompanyId" = "m_1"."Id"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.2.5 Firebird
SELECT
	"c_1"."Id"
FROM
	"Company" "c_1"
ORDER BY
	"c_1"."Id"

