-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

WITH "CTE_1" ("Id", field_1, "Name")
AS
(
	SELECT
		c_1."Id",
		ROW_NUMBER() OVER (ORDER BY c_1."Id"),
		c_1."Name"
	FROM
		"Company" c_1
	ORDER BY
		c_1."Id"
),
"CTE_2"
(
	"Detail_Id",
	"Detail_Name",
	field_1,
	"Key_1"
)
AS
(
	SELECT
		d."Id",
		d."Name",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t1."Id" as "v0Id"
			FROM
				"CTE_1" t1
		) kd
			INNER JOIN "Department" d ON kd."v0Id" = d."CompanyId"
	ORDER BY
		d."Id"
),
"CTE_3"
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_Salary",
	field_1,
	"Key_1"
)
AS
(
	SELECT
		nd."Id",
		nd."DepartmentId",
		nd."Name",
		nd."Salary",
		ROW_NUMBER() OVER (ORDER BY nd."Id"),
		pd."v0Detail_Id"
	FROM
		(
			SELECT DISTINCT
				t2."Detail_Id" as "v0Detail_Id"
			FROM
				"CTE_2" t2
		) pd
			INNER JOIN "Employee" nd ON pd."v0Detail_Id" = nd."DepartmentId"
	ORDER BY
		nd."Id"
)
SELECT
	t6."Item1",
	t6."Item2",
	t6."Item3",
	t6."Item4",
	t6."Item5",
	t6."Item6",
	t6."Item7",
	t6."Item1_1",
	t6."Item2_1"
FROM
	(
		SELECT
			0::Int as "Item1",
			t3."Key_1" as "Item2",
			t3.field_1 as "Item3",
			t3."Detail_Id" as "Item4",
			t3."Detail_Name" as "Item5",
			NULL::Int as "Item6",
			NULL::Int as "Item7",
			NULL::Int as "Item1_1",
			NULL::text as "Item2_1"
		FROM
			"CTE_2" t3
		UNION ALL
		SELECT
			1::Int as "Item1",
			t4."Key_1" as "Item2",
			t4.field_1 as "Item3",
			t4."Detail_Id" as "Item4",
			t4."Detail_Name" as "Item5",
			t4."Detail_DepartmentId" as "Item6",
			t4."Detail_Salary" as "Item7",
			NULL::Int as "Item1_1",
			NULL::text as "Item2_1"
		FROM
			"CTE_3" t4
		UNION ALL
		SELECT
			2::Int as "Item1",
			t5."Id" as "Item2",
			t5.field_1 as "Item3",
			NULL::Int as "Item4",
			NULL::text as "Item5",
			NULL::Int as "Item6",
			NULL::Int as "Item7",
			t5."Id" as "Item1_1",
			t5."Name" as "Item2_1"
		FROM
			"CTE_1" t5
	) t6
ORDER BY
	t6."Item1",
	t6."Item2",
	t6."Item3"

