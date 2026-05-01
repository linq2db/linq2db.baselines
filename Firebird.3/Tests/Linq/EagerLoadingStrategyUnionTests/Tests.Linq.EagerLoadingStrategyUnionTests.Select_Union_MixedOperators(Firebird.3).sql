-- Firebird.3 Firebird3

WITH CTE_1 ("Id", "field_1", "Name")
AS
(
	SELECT
		"d"."Id",
		ROW_NUMBER() OVER (ORDER BY "d"."Id"),
		"d"."Name"
	FROM
		"Department" "d"
	ORDER BY
		"d"."Id"
),
CTE_2
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_Salary",
	"field_1",
	"Key_1"
)
AS
(
	SELECT
		"d_1"."Id",
		"d_1"."DepartmentId",
		"d_1"."Name",
		"d_1"."Salary",
		ROW_NUMBER() OVER (ORDER BY "d_1"."Id"),
		"kd"."v0Id"
	FROM
		(
			SELECT DISTINCT
				"t1"."Id" as "v0Id"
			FROM
				CTE_1 "t1"
		) "kd"
			INNER JOIN "Employee" "d_1" ON "d_1"."DepartmentId" > "kd"."v0Id"
	ORDER BY
		"d_1"."Id"
),
CTE_3
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_Rate",
	"field_1",
	"Key_1"
)
AS
(
	SELECT
		"d_2"."Id",
		"d_2"."DepartmentId",
		"d_2"."Name",
		"d_2"."Rate",
		ROW_NUMBER() OVER (ORDER BY "d_2"."Id"),
		"kd_1"."v0Id"
	FROM
		(
			SELECT DISTINCT
				"t2"."Id" as "v0Id"
			FROM
				CTE_1 "t2"
		) "kd_1"
			INNER JOIN "Contractor" "d_2" ON "d_2"."DepartmentId" <= "kd_1"."v0Id"
	ORDER BY
		"d_2"."Id"
)
SELECT
	"t6"."Item1",
	"t6"."Item2",
	"t6"."Item3",
	"t6"."Item4",
	"t6"."Item5",
	"t6"."Item6",
	"t6"."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			"t3"."field_1" as "Item3",
			"t3"."Key_1" as "Item2",
			"t3"."Detail_Id" as "Item4",
			"t3"."Detail_DepartmentId" as "Item5",
			"t3"."Detail_Name" as "Item6",
			"t3"."Detail_Salary" as "Item7"
		FROM
			CTE_2 "t3"
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			"t4"."field_1" as "Item3",
			"t4"."Key_1" as "Item2",
			"t4"."Detail_Id" as "Item4",
			"t4"."Detail_DepartmentId" as "Item5",
			"t4"."Detail_Name" as "Item6",
			"t4"."Detail_Rate" as "Item7"
		FROM
			CTE_3 "t4"
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Item1",
			"t5"."field_1" as "Item3",
			"t5"."Id" as "Item2",
			"t5"."Id" as "Item4",
			NULL as "Item5",
			"t5"."Name" as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 "t5"
	) "t6"
ORDER BY
	"t6"."Item1",
	"t6"."Item3",
	"t6"."Item2"

