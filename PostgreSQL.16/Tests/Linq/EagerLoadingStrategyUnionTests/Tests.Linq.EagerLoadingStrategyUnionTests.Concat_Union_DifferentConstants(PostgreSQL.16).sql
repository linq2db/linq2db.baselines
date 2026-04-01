-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("Key_1")
AS
(
	SELECT
		cte_x."Id"
	FROM
		"Company" cte_x
	UNION ALL
	SELECT
		c_1."Id"
	FROM
		"Company" c_1
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
			INNER JOIN "Department" d ON kd."Key_1" = d."CompanyId"
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
	t4."Item2_1",
	t4."Item3_1"
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
			NULL::text as "Item1_1",
			NULL::Int as "Item2_1",
			NULL::text as "Item3_1"
		FROM
			"CTE_2" t2
		UNION ALL
		SELECT
			t3."Item1",
			t3."Item2",
			t3."Item3",
			NULL::Int as "Item4",
			NULL::Int as "Item5",
			NULL::text as "Item6",
			NULL::Boolean as "Item7",
			t3."Item1_1",
			t3."Item2" as "Item2_1",
			t3."Item3_1"
		FROM
			(
				SELECT
					1::Int as "Item1",
					p_setop."Id" as "Item2",
					0::BigInt as "Item3",
					'Small'::text as "Item1_1",
					p_setop."Name" as "Item3_1"
				FROM
					"Company" p_setop
				UNION ALL
				SELECT
					1::Int as "Item1",
					c_2."Id" as "Item2",
					0::BigInt as "Item3",
					'Large'::text as "Item1_1",
					c_2."Name" as "Item3_1"
				FROM
					"Company" c_2
			) t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item2",
	t4."Item3"

