-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	"Id",
	"Label",
	"field_1",
	"field_2"
)
AS
(
	SELECT
		t1."Id",
		t1."Label",
		ROW_NUMBER() OVER (ORDER BY t1."Id", t1."Label"),
		CASE
			WHEN t1."Label" = 'ActiveOnly' THEN 1
			ELSE 0
		END
	FROM
		(
			SELECT
				CAST('ActiveOnly' AS VarChar(255)) as "Label",
				c_1."Id"
			FROM
				"Company" c_1
			UNION ALL
			SELECT
				CAST('All' AS VarChar(255)) as "Label",
				c_2."Id"
			FROM
				"Company" c_2
		) t1
),
CTE_2
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	"field_1",
	"Key_Item1",
	"Key_Item2"
)
AS
(
	SELECT
		d."Id",
		d."CompanyId",
		d."Name",
		d."IsActive",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		kd."v0Id",
		kd."v1Label"
	FROM
		(
			SELECT DISTINCT
				t2."Id" as "v0Id",
				t2."Label" as "v1Label"
			FROM
				CTE_1 t2
		) kd
			INNER JOIN "Department" d ON kd."v0Id" = d."CompanyId"
	WHERE
		d."IsActive" = 1
	ORDER BY
		d."Id"
),
CTE_3
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	"field_1",
	"Key_Item1",
	"Key_Item2"
)
AS
(
	SELECT
		d_1."Id",
		d_1."CompanyId",
		d_1."Name",
		d_1."IsActive",
		ROW_NUMBER() OVER (ORDER BY d_1."Id"),
		kd_1."v0Id",
		kd_1."v1Label"
	FROM
		(
			SELECT DISTINCT
				t3."Id" as "v0Id",
				t3."Label" as "v1Label"
			FROM
				CTE_1 t3
		) kd_1
			INNER JOIN "Department" d_1 ON kd_1."v0Id" = d_1."CompanyId"
	ORDER BY
		d_1."Id"
)
SELECT
	t8."Item1",
	t8."Item3",
	t8."Item4",
	t8."Item5",
	t8."Item6",
	t8."Item7",
	t8."Item1_2",
	t8."Item2_1",
	t8."Item3_1",
	t8."Item4_1",
	t8."Item5_1",
	t8."Item1_1",
	t8."Item2"
FROM
	(
		SELECT
			t6."Item1",
			t6."Item1_1",
			t6."Item2",
			t6."Item3",
			t6."Item4",
			t6."Item5",
			t6."Item6",
			t6."Item7",
			NULL as "Item1_2",
			NULL as "Item2_1",
			NULL as "Item3_1",
			NULL as "Item4_1",
			NULL as "Item5_1"
		FROM
			(
				SELECT
					CAST(0 AS Int) as "Item1",
					t4."Key_Item1" as "Item1_1",
					t4."Key_Item2" as "Item2",
					t4."field_1" as "Item3",
					t4."Detail_Id" as "Item4",
					t4."Detail_CompanyId" as "Item5",
					t4."Detail_Name" as "Item6",
					t4."Detail_IsActive" as "Item7"
				FROM
					CTE_2 t4
				UNION ALL
				SELECT
					CAST(1 AS Int) as "Item1",
					t5."Key_Item1" as "Item1_1",
					t5."Key_Item2" as "Item2",
					t5."field_1" as "Item3",
					t5."Detail_Id" as "Item4",
					t5."Detail_CompanyId" as "Item5",
					t5."Detail_Name" as "Item6",
					t5."Detail_IsActive" as "Item7"
				FROM
					CTE_3 t5
			) t6
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Item1",
			t7."Id" as "Item1_1",
			t7."Label" as "Item2",
			t7."field_1" as "Item3",
			NULL as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7",
			t7."Label" as "Item1_2",
			t7."Id" as "Item2_1",
			t7."field_2" as "Item3_1",
			t7."Id" as "Item4_1",
			t7."Label" as "Item5_1"
		FROM
			CTE_1 t7
	) t8
ORDER BY
	t8."Item1",
	t8."Item1_1",
	t8."Item2",
	t8."Item3"

