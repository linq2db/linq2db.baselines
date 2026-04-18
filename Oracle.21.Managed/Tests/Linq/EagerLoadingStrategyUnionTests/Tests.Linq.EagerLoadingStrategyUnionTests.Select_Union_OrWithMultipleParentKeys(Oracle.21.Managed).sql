-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	"Id",
	"CompanyId",
	"field_1",
	"Name"
)
AS
(
	SELECT
		d."Id",
		d."CompanyId",
		ROW_NUMBER() OVER (ORDER BY d."Id", d."CompanyId"),
		d."Name"
	FROM
		"Department" d
	ORDER BY
		d."Id"
),
CTE_2
(
	"Detail_Id",
	"Detail_DepartmentId",
	"Detail_Name",
	"Detail_Salary",
	"field_1",
	"Key_Item1",
	"Key_Item2"
)
AS
(
	SELECT
		d_1."Id",
		d_1."DepartmentId",
		d_1."Name",
		d_1."Salary",
		ROW_NUMBER() OVER (ORDER BY d_1."Id"),
		kd."v0Id",
		kd."v1CompanyId"
	FROM
		(
			SELECT DISTINCT
				t1."Id" as "v0Id",
				t1."CompanyId" as "v1CompanyId"
			FROM
				CTE_1 t1
		) kd
			INNER JOIN "Employee" d_1 ON d_1."DepartmentId" = kd."v0Id" OR d_1."DepartmentId" = kd."v1CompanyId"
	ORDER BY
		d_1."Id"
)
SELECT
	t4."Item1",
	t4."Item3",
	t4."Item4",
	t4."Item5",
	t4."Item6",
	t4."Item7",
	t4."Item1_2",
	t4."Item2_1",
	t4."Item3_1",
	t4."Item1_1",
	t4."Item2"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t2."Key_Item1" as "Item1_1",
			t2."Key_Item2" as "Item2",
			t2."field_1" as "Item3",
			t2."Detail_Id" as "Item4",
			t2."Detail_DepartmentId" as "Item5",
			t2."Detail_Name" as "Item6",
			t2."Detail_Salary" as "Item7",
			NULL as "Item1_2",
			NULL as "Item2_1",
			NULL as "Item3_1"
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t3."Id" as "Item1_1",
			t3."CompanyId" as "Item2",
			t3."field_1" as "Item3",
			NULL as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7",
			t3."Id" as "Item1_2",
			t3."CompanyId" as "Item2_1",
			t3."Name" as "Item3_1"
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item1_1",
	t4."Item2",
	t4."Item3"

