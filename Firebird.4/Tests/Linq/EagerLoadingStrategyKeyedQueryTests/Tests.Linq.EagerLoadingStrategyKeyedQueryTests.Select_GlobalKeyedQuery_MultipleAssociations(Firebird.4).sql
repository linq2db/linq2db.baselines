-- Firebird.4 Firebird4

SELECT
	"d"."Id",
	"d"."Name"
FROM
	"Department" "d"
ORDER BY
	"d"."Id"

-- Firebird.4 Firebird4

SELECT
	"d_sel"."DepartmentId",
	"d_sel"."Id",
	"d_sel"."Name",
	"d_sel"."Salary"
FROM
	"Employee" "d_sel"
WHERE
	"d_sel"."DepartmentId" IN (101, 102, 103)
ORDER BY
	"d_sel"."Id"

-- Firebird.4 Firebird4

SELECT
	"d_sel"."DepartmentId",
	"d_sel"."Id",
	"d_sel"."Name",
	"d_sel"."Rate"
FROM
	"Contractor" "d_sel"
WHERE
	"d_sel"."DepartmentId" IN (101, 102, 103)
ORDER BY
	"d_sel"."Id"

