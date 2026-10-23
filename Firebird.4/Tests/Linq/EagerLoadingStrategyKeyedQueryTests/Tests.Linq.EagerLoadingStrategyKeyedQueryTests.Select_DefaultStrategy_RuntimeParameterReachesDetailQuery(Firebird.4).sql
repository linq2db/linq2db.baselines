-- Firebird.4 Firebird4
DECLARE @minId Integer -- Int32
SET     @minId = 2

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Salary"
FROM
	"Department" "m_1"
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "m_1"."Id"
WHERE
	"d"."Id" >= @minId
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.4 Firebird4
SELECT
	"d"."Id",
	"d"."Name"
FROM
	"Department" "d"
ORDER BY
	"d"."Id"

