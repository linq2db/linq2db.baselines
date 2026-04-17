-- PostgreSQL.13 PostgreSQL

WITH "CTE_1"
(
	"Id",
	field_1,
	"Name",
	"DeptCount"
)
AS
(
	SELECT
		c_1."Id",
		ROW_NUMBER() OVER (ORDER BY c_1."Id"),
		c_1."Name",
		(
			SELECT
				COUNT(*)
			FROM
				"Department" d
			WHERE
				d."CompanyId" = c_1."Id"
		)
	FROM
		"Company" c_1
	ORDER BY
		c_1."Id"
),
"CTE_2"
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	field_1,
	"Key_1"
)
AS
(
	SELECT
		d_1."Id",
		d_1."CompanyId",
		d_1."Name",
		d_1."IsActive",
		ROW_NUMBER() OVER (ORDER BY d_1."Id"),
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t1."Id" as "v0Id"
			FROM
				"CTE_1" t1
		) kd
			INNER JOIN "Department" d_1 ON d_1."CompanyId" = kd."v0Id"
	ORDER BY
		d_1."Id"
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
			t2.field_1 as "Item3",
			t2."Detail_Id" as "Item4",
			t2."Detail_CompanyId" as "Item5",
			t2."Detail_Name" as "Item6",
			t2."Detail_IsActive" as "Item7",
			NULL::Int as "Item1_1",
			NULL::text as "Item2_1",
			NULL::Int as "Item3_1"
		FROM
			"CTE_2" t2
		UNION ALL
		SELECT
			1::Int as "Item1",
			t3."Id" as "Item2",
			t3.field_1 as "Item3",
			NULL::Int as "Item4",
			NULL::Int as "Item5",
			NULL::text as "Item6",
			NULL::Boolean as "Item7",
			t3."Id" as "Item1_1",
			t3."Name" as "Item2_1",
			t3."DeptCount" as "Item3_1"
		FROM
			"CTE_1" t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item2",
	t4."Item3"

