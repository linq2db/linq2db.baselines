-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

WITH "CTE_1" ("Id", field_1, "Label")
AS
(
	SELECT
		t1."Id",
		ROW_NUMBER() OVER (ORDER BY t1."Id"),
		t1."Label"
	FROM
		(
			SELECT
				'First'::text as "Label",
				c_1."Id"
			FROM
				"Company" c_1
			UNION ALL
			SELECT
				'Second'::text as "Label",
				c_2."Id"
			FROM
				"Company" c_2
		) t1
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
				t2."Id" as "v0Id"
			FROM
				"CTE_1" t2
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
				t3."Detail_Id" as "v0Detail_Id"
			FROM
				"CTE_2" t3
		) pd
			INNER JOIN "Employee" nd ON pd."v0Detail_Id" = nd."DepartmentId"
	ORDER BY
		nd."Id"
)
SELECT
	t7."Item1",
	t7."Item2",
	t7."Item3",
	t7."Item4",
	t7."Item5",
	t7."Item6",
	t7."Item7",
	t7."Item1_1",
	t7."Item2_1",
	t7."Item3_1"
FROM
	(
		SELECT
			0::Int as "Item1",
			t4."Key_1" as "Item2",
			t4.field_1 as "Item3",
			t4."Detail_Id" as "Item4",
			t4."Detail_Name" as "Item5",
			NULL::Int as "Item6",
			NULL::Int as "Item7",
			NULL::text as "Item1_1",
			NULL::Int as "Item2_1",
			NULL::Int as "Item3_1"
		FROM
			"CTE_2" t4
		UNION ALL
		SELECT
			1::Int as "Item1",
			t5."Key_1" as "Item2",
			t5.field_1 as "Item3",
			t5."Detail_Id" as "Item4",
			t5."Detail_Name" as "Item5",
			t5."Detail_DepartmentId" as "Item6",
			t5."Detail_Salary" as "Item7",
			NULL::text as "Item1_1",
			NULL::Int as "Item2_1",
			NULL::Int as "Item3_1"
		FROM
			"CTE_3" t5
		UNION ALL
		SELECT
			2::Int as "Item1",
			t6."Id" as "Item2",
			t6.field_1 as "Item3",
			NULL::Int as "Item4",
			NULL::text as "Item5",
			NULL::Int as "Item6",
			NULL::Int as "Item7",
			t6."Label" as "Item1_1",
			t6."Id" as "Item2_1",
			t6."Id" as "Item3_1"
		FROM
			"CTE_1" t6
	) t7
ORDER BY
	t7."Item1",
	t7."Item2",
	t7."Item3"

