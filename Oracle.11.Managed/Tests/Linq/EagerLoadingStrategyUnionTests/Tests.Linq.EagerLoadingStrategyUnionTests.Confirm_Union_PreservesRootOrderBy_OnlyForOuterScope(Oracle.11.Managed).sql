-- Oracle.11.Managed Oracle11

WITH CTE_1 ("Id", "field_1", "Name")
AS
(
	SELECT
		c_1."Id",
		ROW_NUMBER() OVER (ORDER BY c_1."Name"),
		c_1."Name"
	FROM
		"Company" c_1
	WHERE
		EXISTS(
			SELECT
				*
			FROM
				(
					SELECT
						t1."Id"
					FROM
						(
							SELECT
								x."Id"
							FROM
								"Company" x
							ORDER BY
								x."Id" DESC
						) t1
					WHERE
						ROWNUM <= 100
				) x_1
			WHERE
				x_1."Id" = c_1."Id"
		)
	ORDER BY
		c_1."Name"
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
		kd."v0Id"
	FROM
		(
			SELECT DISTINCT
				t2."Id" as "v0Id"
			FROM
				CTE_1 t2
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0Id"
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
	t5."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t3."field_1" as "Item3",
			t3."Key_1" as "Item2",
			t3."Detail_Id" as "Item4",
			t3."Detail_CompanyId" as "Item5",
			t3."Detail_Name" as "Item6",
			t3."Detail_IsActive" as "Item7"
		FROM
			CTE_2 t3
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t4."field_1" as "Item3",
			t4."Id" as "Item2",
			t4."Id" as "Item4",
			NULL as "Item5",
			t4."Name" as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 t4
	) t5
ORDER BY
	t5."Item1",
	t5."Item3",
	t5."Item2"

