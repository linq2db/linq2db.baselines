-- PostgreSQL.19 PostgreSQL13

SELECT
	m_1."Id",
	d."Id",
	d."ParentId",
	d."Name"
FROM
	"NullableParent" m_1
		INNER JOIN "NullableChild" d ON d."ParentId" = m_1."Id"
ORDER BY
	d."Id",
	m_1."Id"

-- PostgreSQL.19 PostgreSQL13

SELECT
	p."Id",
	p."Name"
FROM
	"NullableParent" p
ORDER BY
	p."Id"

-- PostgreSQL.19 PostgreSQL13

WITH "CTE_1" ("Id", field, "Name")
AS MATERIALIZED
(
	SELECT
		p."Id",
		ROW_NUMBER() OVER (ORDER BY p."Id"),
		p."Name"
	FROM
		"NullableParent" p
	ORDER BY
		p."Id"
),
"CTE_2"
(
	"Detail_Id",
	"Detail_ParentId",
	"Detail_Name",
	field,
	"Key_1"
)
AS
(
	SELECT
		d."Id",
		d."ParentId",
		d."Name",
		ROW_NUMBER() OVER (ORDER BY d."Id"),
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t1."Id" as "v0Id"
			FROM
				"CTE_1" t1
		) kd
			INNER JOIN "NullableChild" d ON d."ParentId" = kd."v0Id"
	ORDER BY
		d."Id"
)
SELECT
	t4."Item1",
	t4."Item2",
	t4."Item3",
	t4."Item4",
	t4."Item5",
	t4."Item6"
FROM
	(
		SELECT
			0::Int as "Item1",
			t2.field as "Item3",
			t2."Key_1" as "Item2",
			t2."Detail_Id" as "Item4",
			t2."Detail_ParentId" as "Item5",
			t2."Detail_Name" as "Item6"
		FROM
			"CTE_2" t2
		UNION ALL
		SELECT
			1::Int as "Item1",
			t3.field as "Item3",
			t3."Id" as "Item2",
			t3."Id" as "Item4",
			NULL::Int as "Item5",
			t3."Name" as "Item6"
		FROM
			"CTE_1" t3
	) t4
ORDER BY
	t4."Item1",
	t4."Item3",
	t4."Item2"

