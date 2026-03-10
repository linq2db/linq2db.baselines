-- Firebird.4 Firebird4

SELECT
	"item_1"."Id",
	(
		SELECT
			SUM("stock"."QuantityAvailable")
		FROM
			"WarehouseStock" "stock"
		WHERE
			"stock"."ItemId" = "item_1"."Id"
		GROUP BY
			"stock"."ItemId"
	)
FROM
	"Issue4458Item" "item_1"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id"
FROM
	"Issue4458Item" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1"."ItemId",
	"t1"."QuantityAvailable",
	"t1"."WarehouseId"
FROM
	"WarehouseStock" "t1"

