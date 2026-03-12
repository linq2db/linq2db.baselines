-- Firebird.5 Firebird4

SELECT
	"t_1"."FinalCustomerId",
	"t_1"."IsActive",
	SUM("t_1"."c1")
FROM
	(
		SELECT
			Coalesce(NULLIF("p"."FinalCustomerId", 0), "p"."CustomerId") as "FinalCustomerId",
			FALSE as "IsActive",
			"t"."Volume" * "p"."Price" as "c1"
		FROM
			"Inventory" "t"
				INNER JOIN "CustomerPrice" "p" ON "t"."CustomerId" = "p"."CustomerId"
	) "t_1"
GROUP BY
	"t_1"."FinalCustomerId",
	"t_1"."IsActive"

