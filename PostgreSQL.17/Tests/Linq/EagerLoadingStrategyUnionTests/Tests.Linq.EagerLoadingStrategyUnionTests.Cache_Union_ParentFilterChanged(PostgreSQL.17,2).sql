-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @maxCompanyId Integer -- Int32
SET     @maxCompanyId = 2

WITH "CTE_1" ("Key_1", "RN", "Data_Name")
AS
(
	SELECT
		cte_x."Id",
		ROW_NUMBER() OVER (ORDER BY cte_x."Id"),
		cte_x."Name"
	FROM
		"Company" cte_x
	WHERE
		cte_x."Id" <= :maxCompanyId
	ORDER BY
		cte_x."Id"
),
"CTE_2"
(
	"Key_1",
	"RN",
	"Data_Id",
	"Data_CompanyId",
	"Data_Name",
	"Data_IsActive"
)
AS
(
	SELECT
		kd."Key_1",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		d."Id",
		d."CompanyId",
		d."Name",
		d."IsActive"
	FROM
		(
			SELECT DISTINCT
				t1."Key_1"
			FROM
				"CTE_1" t1
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."Key_1"
	ORDER BY
		d."Id"
)
SELECT
	t4."Item1",
	t4."Item2",
	t4."Item3",
	t4."Item4",
	t4."Item5",
	t4."Item6",
	t4."Item7",
	t4."Item1_1",
	t4."Item2_1"
FROM
	(
		SELECT
			0::Int as "Item1",
			t2."Key_1" as "Item2",
			t2."RN" as "Item3",
			t2."Data_Id" as "Item4",
			t2."Data_CompanyId" as "Item5",
			t2."Data_Name" as "Item6",
			t2."Data_IsActive" as "Item7",
			NULL::Int as "Item1_1",
			NULL::text as "Item2_1"
		FROM
			"CTE_2" t2
		UNION ALL
		SELECT
			1::Int as "Item1",
			t3."Key_1" as "Item2",
			t3."RN" as "Item3",
			NULL::Int as "Item4",
			NULL::Int as "Item5",
			NULL::text as "Item6",
			NULL::Boolean as "Item7",
			t3."Key_1" as "Item1_1",
			t3."Data_Name" as "Item2_1"
		FROM
			"CTE_1" t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item2",
	t4."Item3"

