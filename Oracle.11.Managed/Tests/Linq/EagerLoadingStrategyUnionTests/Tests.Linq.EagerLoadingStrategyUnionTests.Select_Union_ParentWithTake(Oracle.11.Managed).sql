-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

WITH CTE_1 ("Key_1", RN, "Data_Name")
AS
(
	SELECT
		cte_x."Id",
		ROW_NUMBER() OVER (ORDER BY cte_x."Id"),
		cte_x."Name"
	FROM
		(
			SELECT
				t1."Id",
				t1."Name"
			FROM
				(
					SELECT
						c_1."Id",
						c_1."Name"
					FROM
						"Company" c_1
					ORDER BY
						c_1."Id"
				) t1
			WHERE
				ROWNUM <= :take
		) cte_x
),
CTE_2
(
	"Key_1",
	RN,
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
				t2."Key_1"
			FROM
				CTE_1 t2
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."Key_1"
	ORDER BY
		d."Id"
)
SELECT
	t5."Item1",
	t5."Item2",
	t5."Item3",
	t5."Item4",
	t5."Item5",
	t5."Item6",
	t5."Item7",
	t5."Item1_1",
	t5."Item2_1"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t3."Key_1" as "Item2",
			t3.RN as "Item3",
			t3."Data_Id" as "Item4",
			t3."Data_CompanyId" as "Item5",
			t3."Data_Name" as "Item6",
			t3."Data_IsActive" as "Item7",
			NULL as "Item1_1",
			NULL as "Item2_1"
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t4."Key_1" as "Item2",
			t4.RN as "Item3",
			NULL as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7",
			t4."Key_1" as "Item1_1",
			t4."Data_Name" as "Item2_1"
		FROM
			CTE_1 t4
	) t5
ORDER BY
	t5."Item1",
	t5."Item2",
	t5."Item3"

