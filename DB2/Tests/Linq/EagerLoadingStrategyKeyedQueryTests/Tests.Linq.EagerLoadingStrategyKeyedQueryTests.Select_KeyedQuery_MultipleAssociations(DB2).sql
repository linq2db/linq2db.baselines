-- DB2 DB2.LUW DB2LUW

SELECT
	"d"."Id",
	"d"."Name"
FROM
	"Department" "d"
ORDER BY
	"d"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Salary"
FROM
	(VALUES
		(101), (102), (103)
	) "k_1"("item")
		INNER JOIN "Employee" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"k_1"."item",
	"d"."Id",
	"d"."DepartmentId",
	"d"."Name",
	"d"."Rate"
FROM
	(VALUES
		(101), (102), (103)
	) "k_1"("item")
		INNER JOIN "Contractor" "d" ON "d"."DepartmentId" = "k_1"."item"
ORDER BY
	"d"."Id"

