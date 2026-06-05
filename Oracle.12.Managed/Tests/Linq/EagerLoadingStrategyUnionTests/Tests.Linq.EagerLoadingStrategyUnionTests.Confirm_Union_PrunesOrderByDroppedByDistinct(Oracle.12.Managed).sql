-- Oracle.12.Managed Oracle.Managed Oracle12

WITH CTE_1 ("CompanyId", "field_1")
AS
(
	SELECT
		x_1."CompanyId",
		ROW_NUMBER() OVER (ORDER BY x_1."CompanyId")
	FROM
		(
			SELECT DISTINCT
				x."CompanyId"
			FROM
				"Department" x
		) x_1
),
CTE_2
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	"field_1",
	"Key_1"
)
AS
(
	SELECT
		d."Id",
		d."CompanyId",
		d."Name",
		d."IsActive",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		kd."v0CompanyId"
	FROM
		(
			SELECT DISTINCT
				t1."CompanyId" as "v0CompanyId"
			FROM
				CTE_1 t1
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0CompanyId"
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
	t4."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t2."field_1" as "Item3",
			t2."Key_1" as "Item2",
			t2."Detail_Id" as "Item4",
			t2."Detail_CompanyId" as "Item5",
			t2."Detail_Name" as "Item6",
			t2."Detail_IsActive" as "Item7"
		FROM
			CTE_2 t2
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t3."field_1" as "Item3",
			t3."CompanyId" as "Item2",
			t3."CompanyId" as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item3",
	t4."Item2"

