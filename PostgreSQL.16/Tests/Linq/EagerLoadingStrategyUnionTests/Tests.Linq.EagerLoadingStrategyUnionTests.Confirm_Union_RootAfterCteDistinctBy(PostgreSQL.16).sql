-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
WITH "CTE_1" ("Id", "Name")
AS
(
	SELECT
		t1."Id",
		t1."Name"
	FROM
		"Company" t1
	ORDER BY
		t1."Id" DESC
),
"CTE_2" ("Id", field)
AS MATERIALIZED
(
	SELECT
		c_2."Id",
		ROW_NUMBER() OVER (ORDER BY c_2."Id")
	FROM
		(
			SELECT DISTINCT ON (c_1."Name")
				c_1."Id"
			FROM
				"CTE_1" c_1
			WHERE
				c_1."Id" > 0
			ORDER BY
				c_1."Name"
		) c_2
),
"CTE_3"
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	field,
	"Key_1"
)
AS
(
	SELECT
		d."Id",
		d."CompanyId",
		d."Name",
		d."IsActive",
		0::BigInt,
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t2."Id" as "v0Id"
			FROM
				"CTE_2" t2
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0Id"
)
SELECT
	t5."Item1",
	t5."Item2",
	t5."Item3",
	t5."Item4",
	t5."Item5",
	t5."Item6",
	t5."Item7"
FROM
	(
		SELECT
			0::Int as "Item1",
			t3.field as "Item3",
			t3."Key_1" as "Item2",
			t3."Detail_Id" as "Item4",
			t3."Detail_CompanyId" as "Item5",
			t3."Detail_Name" as "Item6",
			t3."Detail_IsActive" as "Item7"
		FROM
			"CTE_3" t3
		UNION ALL
		SELECT
			1::Int as "Item1",
			t4.field as "Item3",
			t4."Id" as "Item2",
			t4."Id" as "Item4",
			NULL::Int as "Item5",
			NULL::text as "Item6",
			NULL::Boolean as "Item7"
		FROM
			"CTE_2" t4
	) t5
ORDER BY
	t5."Item1",
	t5."Item3",
	t5."Item2"

