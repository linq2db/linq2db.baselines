-- Firebird.5 Firebird4

WITH CTE_1 ("Id", "field_1", "Name")
AS
(
	SELECT
		"t1"."Id",
		ROW_NUMBER() OVER (ORDER BY "t1"."Id"),
		"t1"."Name"
	FROM
		"Company" "t1"
	ORDER BY
		"t1"."Id"
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
		"d"."Id",
		"d"."CompanyId",
		"d"."Name",
		"d"."IsActive",
		CAST(0 AS BigInt),
		"kd"."v0Id"
	FROM
		(
			SELECT DISTINCT
				"t2"."Id" as "v0Id"
			FROM
				CTE_1 "t2"
		) "kd"
			INNER JOIN "Department" "d" ON "kd"."v0Id" = "d"."CompanyId"
)
SELECT
	"t5"."Item1",
	"t5"."Item2",
	"t5"."Item3",
	"t5"."Item4",
	"t5"."Item5",
	"t5"."Item6",
	"t5"."Item7"
FROM
	(
		SELECT
			CAST(0 AS Int) as "Item1",
			"t3"."field_1" as "Item3",
			"t3"."Key_1" as "Item2",
			"t3"."Detail_Id" as "Item4",
			"t3"."Detail_CompanyId" as "Item5",
			"t3"."Detail_Name" as "Item6",
			"t3"."Detail_IsActive" as "Item7"
		FROM
			CTE_2 "t3"
		UNION ALL
		SELECT
			CAST(1 AS Int) as "Item1",
			"t4"."field_1" as "Item3",
			"t4"."Id" as "Item2",
			"t4"."Id" as "Item4",
			NULL as "Item5",
			"t4"."Name" as "Item6",
			NULL as "Item7"
		FROM
			CTE_1 "t4"
	) "t5"
ORDER BY
	"t5"."Item1",
	"t5"."Item3",
	"t5"."Item2"

