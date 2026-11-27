-- SapHana.Odbc SapHanaOdbc
INSERT INTO "StockAddress"
(
	"Id",
	"Address1",
	"City",
	"State",
	"Zip"
)
VALUES
(
	1,
	'123 Test St',
	'Test City',
	'TS',
	'12345'
)

-- SapHana.Odbc SapHanaOdbc
INSERT INTO "StockWarehouse"
(
	"Id",
	"Name",
	"AddressId"
)
VALUES
(
	1,
	'Test Warehouse',
	1
)

-- SapHana.Odbc SapHanaOdbc
INSERT INTO "StockUnitOfMeasure"
(
	"Id",
	"Name",
	"Abbreviation"
)
VALUES
(
	1,
	'Test Warehouse',
	'ea'
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @productId Int -- Int32
SET     @productId = 1

INSERT INTO "StockProduct"
(
	"Id",
	"Sku",
	"Description",
	"UnitOfMeasureId"
)
VALUES
(
	?,
	'123-SKU',
	'Test 123 Sku',
	1
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @includedProductId Int -- Int32
SET     @includedProductId = 2

INSERT INTO "StockProduct"
(
	"Id",
	"Sku",
	"Description",
	"UnitOfMeasureId"
)
VALUES
(
	?,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @productId Int -- Int32
SET     @productId = 1
DECLARE @includedProductId Int -- Int32
SET     @includedProductId = 2

INSERT INTO "StockProductIncludedProduct"
(
	"ProductId",
	"IncludedProductId",
	"Quantity"
)
VALUES
(
	?,
	?,
	10
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @productId Int -- Int32
SET     @productId = 1

INSERT INTO "StockWarehouseProduct"
(
	"WarehouseId",
	"ProductId",
	"StockOnHand"
)
VALUES
(
	1,
	?,
	10
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @productId Int -- Int32
SET     @productId = 1

WITH "CTE_1" ("ProductId", "WarehouseId")
AS
(
	SELECT
		?,
		"w"."Id"
	FROM
		"StockWarehouse" "w"
)
SELECT
	"source"."ProductId",
	"t1"."StockOnHand",
	(
		SELECT
			SUM("wp_1"."StockOnHand")
		FROM
			"StockWarehouseProduct" "wp_1"
		WHERE
			"wp_1"."WarehouseId" = "source"."WarehouseId"
	)
FROM
	"CTE_1" "source"
		INNER JOIN "StockProductIncludedProduct" "includedProductMapping" ON "source"."ProductId" = "includedProductMapping"."ProductId"
		LEFT JOIN LATERAL (
			SELECT
				"wp"."StockOnHand"
			FROM
				"StockWarehouseProduct" "wp"
			WHERE
				"wp"."WarehouseId" = "source"."WarehouseId"
			LIMIT 1
		) "t1" ON 1=1

