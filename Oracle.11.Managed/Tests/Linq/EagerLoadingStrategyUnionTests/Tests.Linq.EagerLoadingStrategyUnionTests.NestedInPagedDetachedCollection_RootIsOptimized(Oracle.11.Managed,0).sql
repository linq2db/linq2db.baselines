-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 2

WITH CTE_1 ("Id", "field")
AS
(
	SELECT
		c_2."Id",
		ROW_NUMBER() OVER (ORDER BY c_2."Id")
	FROM
		(
			SELECT
				t2."Id"
			FROM
				(
					SELECT
						t1."Id",
						ROWNUM as RN
					FROM
						(
							SELECT
								c_1."Id"
							FROM
								"Company" c_1
							ORDER BY
								c_1."Id"
						) t1
					WHERE
						ROWNUM <= (:skip + :take)
				) t2
			WHERE
				t2.RN > :skip
		) c_2
),
CTE_2
(
	"Detail_Id",
	"Detail_CompanyId",
	"Detail_Name",
	"Detail_IsActive",
	"field",
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
				t3."Id" as "v0Id"
			FROM
				CTE_1 t3
		) kd
			INNER JOIN "Department" d ON d."CompanyId" = kd."v0Id"
	ORDER BY
		d."Id"
)
SELECT
	t6."Item1",
	t6."Item2",
	t6."Item3",
	t6."Item4",
	t6."Item5",
	t6."Item6",
	t6."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			t4."field" as "Item3",
			t4."Key_1" as "Item2",
			t4."Detail_Id" as "Item4",
			t4."Detail_CompanyId" as "Item5",
			t4."Detail_Name" as "Item6",
			t4."Detail_IsActive" as "Item7"
		FROM
			CTE_2 t4
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			t5."field" as "Item3",
			t5."Id" as "Item2",
			t5."Id" as "Item4",
			NULL as "Item5",
			NULL as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 t5
	) t6
ORDER BY
	t6."Item1",
	t6."Item3",
	t6."Item2"

-- Oracle.11.Managed Oracle11
SELECT
	(
		SELECT
			t1."First_1"
		FROM
			(
				SELECT
					c_1."Id" as "First_1"
				FROM
					"Company" c_1
				ORDER BY
					c_1."Id"
			) t1
		WHERE
			ROWNUM <= 1
	)
FROM SYS.DUAL

