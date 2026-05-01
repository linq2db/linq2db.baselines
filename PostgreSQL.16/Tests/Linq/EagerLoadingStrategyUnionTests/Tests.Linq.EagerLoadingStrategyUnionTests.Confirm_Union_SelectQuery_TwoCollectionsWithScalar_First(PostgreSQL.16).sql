-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1"
(
	"Detail_Id",
	"Detail_Name",
	field_1,
	"Key_1"
)
AS
(
	SELECT
		d."Id",
		d."Name",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		0
	FROM
		"Company" d
	ORDER BY
		d."Id"
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
		0
	FROM
		"Department" d_1
	ORDER BY
		d_1."Id"
),
"CTE_3" (field_1, "Count_1")
AS
(
	SELECT
		0::BigInt,
		(
			SELECT
				COUNT(*)
			FROM
				"Company" t1
		)
	LIMIT 1
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
			t2.field_1 as "Item3",
			t2."Key_1" as "Item2",
			t2."Detail_Id" as "Item4",
			t2."Detail_Name" as "Item5",
			NULL::Int as "Item6",
			NULL::Boolean as "Item7"
		FROM
			"CTE_1" t2
		UNION ALL
		SELECT
			1::Int as "Item1",
			t3.field_1 as "Item3",
			t3."Key_1" as "Item2",
			t3."Detail_Id" as "Item4",
			t3."Detail_Name" as "Item5",
			t3."Detail_CompanyId" as "Item6",
			t3."Detail_IsActive" as "Item7"
		FROM
			"CTE_2" t3
		UNION ALL
		SELECT
			2::Int as "Item1",
			t4.field_1 as "Item3",
			0::Int as "Item2",
			t4."Count_1" as "Item4",
			NULL::text as "Item5",
			NULL::Int as "Item6",
			NULL::Boolean as "Item7"
		FROM
			"CTE_3" t4
	) t5
ORDER BY
	t5."Item1",
	t5."Item3",
	t5."Item2"

