﻿BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue4717Address"
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

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue4717Warehouse"
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

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue4717UnitOfMeasure"
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

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @productId Integer -- Int32
SET     @productId = 1

INSERT INTO "Issue4717Product"
(
	"Id",
	"Sku",
	"Description",
	"UnitOfMeasureId"
)
VALUES
(
	@productId,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @includedProductId Integer -- Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717Product"
(
	"Id",
	"Sku",
	"Description",
	"UnitOfMeasureId"
)
VALUES
(
	@includedProductId,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @productId Integer -- Int32
SET     @productId = 1
DECLARE @includedProductId Integer -- Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717ProductIncludedProduct"
(
	"ProductId",
	"IncludedProductId",
	"Quantity"
)
VALUES
(
	@productId,
	@includedProductId,
	10
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @productId Integer -- Int32
SET     @productId = 1

INSERT INTO "Issue4717WarehouseProductMappin"
(
	"WarehouseId",
	"ProductId",
	"StockOnHand"
)
VALUES
(
	1,
	@productId,
	10
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @productId Integer -- Int32
SET     @productId = 1

WITH CTE_1 ("ProductId", "WarehouseId")
AS
(
	SELECT
		CAST(@productId AS Int),
		"w"."Id"
	FROM
		"Issue4717Warehouse" "w"
)
SELECT
	"source"."ProductId",
	(
		SELECT
			"wp"."StockOnHand"
		FROM
			"Issue4717WarehouseProductMappin" "wp"
		WHERE
			"wp"."WarehouseId" = "source"."WarehouseId"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			SUM("wp_1"."StockOnHand")
		FROM
			"Issue4717WarehouseProductMappin" "wp_1"
		WHERE
			"wp_1"."WarehouseId" = "source"."WarehouseId"
	)
FROM
	CTE_1 "source"
		INNER JOIN "Issue4717ProductIncludedProduct" "includedProductMapping" ON "source"."ProductId" = "includedProductMapping"."ProductId"

