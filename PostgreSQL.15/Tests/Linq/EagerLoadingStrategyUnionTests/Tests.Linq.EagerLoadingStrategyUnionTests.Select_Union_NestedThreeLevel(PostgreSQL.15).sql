-- PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("Id", field_1, "CompanyName")
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
	"Detail_DeptName",
	"Key_1",
	field_1
)
AS
(
	SELECT
		d."Id",
		d."Name",
		kd."v0Id",
		ROW_NUMBER() OVER (ORDER BY d."Id")
	FROM
		(
			SELECT DISTINCT
				t1."Id" as "v0Id"
			FROM
				"CTE_1" t1
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0Id"
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
			INNER JOIN "Employee" nd ON nd."DepartmentId" = pd."v0Detail_Id"
	ORDER BY
		nd."Id"
),
"CTE_4"
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_Rate",
	field_1,
	"Key_1"
)
AS
(
	SELECT
		nd_1."Id",
		nd_1."DepartmentId",
		nd_1."Name",
		nd_1."Rate",
		ROW_NUMBER() OVER (ORDER BY nd_1."Id"),
		pd_1."v0Detail_Id"
	FROM
		(
			SELECT DISTINCT
				t3."Detail_Id" as "v0Detail_Id"
			FROM
				"CTE_2" t3
		) pd_1
			INNER JOIN "Contractor" nd_1 ON nd_1."DepartmentId" = pd_1."v0Detail_Id"
	ORDER BY
		nd_1."Id"
)
SELECT
	t9."Item1",
	t9."Item2",
	t9."Item3",
	t9."Item4",
	t9."Item5",
	t9."Item6",
	t9."Item7",
	t9."Item1_1",
	t9."Item2_1"
FROM
	(
		SELECT
			t7."Item1",
			t7."Item2",
			t7."Item3",
			t7."Item4",
			t7."Item5",
			t7."Item6",
			t7."Item7",
			NULL::Int as "Item1_1",
			NULL::text as "Item2_1"
		FROM
			(
				SELECT
					0::Int as "Item1",
					t4."Key_1" as "Item2",
					t4.field_1 as "Item3",
					t4."Detail_Id" as "Item4",
					t4."Detail_DeptName" as "Item5",
					NULL::Int as "Item6",
					NULL::Int as "Item7"
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
					t5."Detail_Salary" as "Item7"
				FROM
					"CTE_3" t5
				UNION ALL
				SELECT
					2::Int as "Item1",
					t6."Key_1" as "Item2",
					t6.field_1 as "Item3",
					t6."Detail_Id" as "Item4",
					t6."Detail_Name" as "Item5",
					t6."Detail_DepartmentId" as "Item6",
					t6."Detail_Rate" as "Item7"
				FROM
					"CTE_4" t6
			) t7
		UNION ALL
		SELECT
			3::Int as "Item1",
			t8."Id" as "Item2",
			t8.field_1 as "Item3",
			NULL::Int as "Item4",
			NULL::text as "Item5",
			NULL::Int as "Item6",
			NULL::Int as "Item7",
			t8."Id" as "Item1_1",
			t8."CompanyName" as "Item2_1"
		FROM
			"CTE_1" t8
	) t9
ORDER BY
	t9."Item1",
	t9."Item2",
	t9."Item3"

