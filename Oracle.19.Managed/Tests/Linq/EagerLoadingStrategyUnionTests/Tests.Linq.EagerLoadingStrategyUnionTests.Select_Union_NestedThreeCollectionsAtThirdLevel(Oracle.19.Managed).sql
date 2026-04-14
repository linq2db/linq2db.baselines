-- Oracle.19.Managed Oracle.Managed Oracle12

WITH CTE_1 ("Id", "field_1", "CompanyName")
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
CTE_2
(
	"Detail_Id",
	"Detail_DeptName",
	"Key_1",
	"field_1"
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
				CTE_1 t1
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0Id"
	ORDER BY
		d."Id"
),
CTE_3
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
				CTE_2 t2
		) pd
			INNER JOIN "Employee" nd ON nd."DepartmentId" = pd."v0Detail_Id"
	ORDER BY
		nd."Id"
),
CTE_4
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
				CTE_2 t3
		) pd_1
			INNER JOIN "Contractor" nd_1 ON nd_1."DepartmentId" = pd_1."v0Detail_Id"
	ORDER BY
		nd_1."Id"
),
CTE_5
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_School",
	"field_1",
	"Key_1"
)
AS
(
	SELECT
		nd_2."Id",
		nd_2."DepartmentId",
		nd_2."Name",
		nd_2."School",
		ROW_NUMBER() OVER (ORDER BY nd_2."Id"),
		pd_2."v0Detail_Id"
	FROM
		(
			SELECT DISTINCT
				t4."Detail_Id" as "v0Detail_Id"
			FROM
				CTE_2 t4
		) pd_2
			INNER JOIN "Intern" nd_2 ON nd_2."DepartmentId" = pd_2."v0Detail_Id"
	ORDER BY
		nd_2."Id"
)
SELECT
	t12."Item1",
	t12."Item2",
	t12."Item3",
	t12."Item4",
	t12."Item5",
	t12."Item6",
	t12."Item7",
	t12."Item1_1",
	t12."Item2_1",
	t12."Item3_1"
FROM
	(
		SELECT
			t10."Item1",
			t10."Item2",
			t10."Item3",
			t10."Item4",
			t10."Item5",
			t10."Item6",
			t10."Item7",
			t10."Item1_1",
			NULL as "Item2_1",
			NULL as "Item3_1"
		FROM
			(
				SELECT
					t8."Item1",
					t8."Item2",
					t8."Item3",
					t8."Item4",
					t8."Item5",
					t8."Item6",
					t8."Item7",
					NULL as "Item1_1"
				FROM
					(
						SELECT
							CAST(0 AS Int) as "Item1",
							t5."Key_1" as "Item2",
							t5."field_1" as "Item3",
							t5."Detail_Id" as "Item4",
							t5."Detail_DeptName" as "Item5",
							NULL as "Item6",
							NULL as "Item7"
						FROM
							CTE_2 t5
						UNION ALL
						SELECT
							CAST(1 AS Int) as "Item1",
							t6."Key_1" as "Item2",
							t6."field_1" as "Item3",
							t6."Detail_Id" as "Item4",
							t6."Detail_Name" as "Item5",
							t6."Detail_DepartmentId" as "Item6",
							t6."Detail_Salary" as "Item7"
						FROM
							CTE_3 t6
						UNION ALL
						SELECT
							CAST(2 AS Int) as "Item1",
							t7."Key_1" as "Item2",
							t7."field_1" as "Item3",
							t7."Detail_Id" as "Item4",
							t7."Detail_Name" as "Item5",
							t7."Detail_DepartmentId" as "Item6",
							t7."Detail_Rate" as "Item7"
						FROM
							CTE_4 t7
					) t8
				UNION ALL
				SELECT
					CAST(3 AS Int) as "Item1",
					t9."Key_1" as "Item2",
					t9."field_1" as "Item3",
					t9."Detail_Id" as "Item4",
					t9."Detail_Name" as "Item5",
					t9."Detail_DepartmentId" as "Item6",
					NULL as "Item7",
					t9."Detail_School" as "Item1_1"
				FROM
					CTE_5 t9
			) t10
		UNION ALL
		SELECT
			CAST(4 AS Int) as "Item1",
			t11."Id" as "Item2",
			t11."field_1" as "Item3",
			NULL as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7",
			NULL as "Item1_1",
			t11."Id" as "Item2_1",
			t11."CompanyName" as "Item3_1"
		FROM
			CTE_1 t11
	) t12
ORDER BY
	t12."Item1",
	t12."Item2",
	t12."Item3"

