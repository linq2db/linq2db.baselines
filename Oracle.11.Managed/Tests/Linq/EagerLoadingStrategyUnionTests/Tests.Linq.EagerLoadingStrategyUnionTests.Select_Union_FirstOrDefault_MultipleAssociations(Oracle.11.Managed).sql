-- Oracle.11.Managed Oracle11

WITH CTE_1 ("Id", "field_1", "Name")
AS
(
	SELECT
		t1."Id",
		t1."c1",
		t1."Name"
	FROM
		(
			SELECT
				d."Id",
				ROW_NUMBER() OVER (ORDER BY d."Id") as "c1",
				d."Name"
			FROM
				"Department" d
			ORDER BY
				d."Id"
		) t1
	WHERE
		ROWNUM <= 1
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
		d_1."Id",
		d_1."DepartmentId",
		d_1."Name",
		d_1."Salary",
		ROW_NUMBER() OVER (ORDER BY d_1."Id"),
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t2."Id" as "v0Id"
			FROM
				CTE_1 t2
		) kd
			INNER JOIN "Employee" d_1 ON d_1."DepartmentId" = kd."v0Id"
	ORDER BY
		d_1."Id"
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
		d_2."Id",
		d_2."DepartmentId",
		d_2."Name",
		d_2."Rate",
		ROW_NUMBER() OVER (ORDER BY d_2."Id"),
		kd_1."v0Id"
	FROM
		(
			SELECT DISTINCT
				t3."Id" as "v0Id"
			FROM
				CTE_1 t3
		) kd_1
			INNER JOIN "Contractor" d_2 ON d_2."DepartmentId" = kd_1."v0Id"
	ORDER BY
		d_2."Id"
)
SELECT
	t7."Item1",
	t7."Item2",
	t7."Item3",
	t7."Item4",
	t7."Item5",
	t7."Item6",
	t7."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t4."field_1" as "Item3",
			t4."Key_1" as "Item2",
			t4."Detail_Id" as "Item4",
			t4."Detail_DepartmentId" as "Item5",
			t4."Detail_Name" as "Item6",
			t4."Detail_Salary" as "Item7"
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t5."field_1" as "Item3",
			t5."Key_1" as "Item2",
			t5."Detail_Id" as "Item4",
			t5."Detail_DepartmentId" as "Item5",
			t5."Detail_Name" as "Item6",
			t5."Detail_Rate" as "Item7"
		FROM
			CTE_3 t5
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Item1",
			t6."field_1" as "Item3",
			t6."Id" as "Item2",
			t6."Id" as "Item4",
			NULL as "Item5",
			t6."Name" as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 t6
	) t7
ORDER BY
	t7."Item1",
	t7."Item3",
	t7."Item2"

