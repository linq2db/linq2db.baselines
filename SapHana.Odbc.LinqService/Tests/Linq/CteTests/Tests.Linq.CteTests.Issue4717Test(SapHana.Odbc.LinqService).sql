BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Address"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717Address"
(
	"Id"       Integer       NOT NULL,
	"Address1" NVarChar(255)     NULL,
	"City"     NVarChar(255)     NULL,
	"State"    NVarChar(255)     NULL,
	"Zip"      NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Warehouse"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717Warehouse"
(
	"Id"        Integer       NOT NULL,
	"Name"      NVarChar(255)     NULL,
	"AddressId" Integer       NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717UnitOfMeasure"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717UnitOfMeasure"
(
	"Id"           Integer       NOT NULL,
	"Name"         NVarChar(255)     NULL,
	"Abbreviation" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Product"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717Product"
(
	"Id"              Integer       NOT NULL,
	"Description"     NVarChar(255)     NULL,
	"Sku"             NVarChar(255)     NULL,
	"UnitOfMeasureId" Integer       NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717ProductIncludedProductMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717ProductIncludedProductMapping"
(
	"ProductId"         Integer NOT NULL,
	"IncludedProductId" Integer NOT NULL,
	"Quantity"          Decimal NOT NULL,

	PRIMARY KEY ("ProductId", "IncludedProductId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717WarehouseProductMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4717WarehouseProductMapping"
(
	"WarehouseId" Integer        NOT NULL,
	"ProductId"   Integer        NOT NULL,
	"StockOnHand" Decimal(10, 0) NOT NULL,

	PRIMARY KEY ("WarehouseId", "ProductId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc
DECLARE @productId  -- Int32
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
	?,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @includedProductId  -- Int32
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
	?,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @productId  -- Int32
SET     @productId = 1
DECLARE @includedProductId  -- Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717ProductIncludedProductMapping"
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @productId  -- Int32
SET     @productId = 1

INSERT INTO "Issue4717WarehouseProductMapping"
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @productId  -- Int32
SET     @productId = 1

WITH "CTE_1" ("ProductId", "WarehouseId")
AS
(
	SELECT
		?,
		"w"."Id"
	FROM
		"Issue4717Warehouse" "w"
)
SELECT
	"source"."ProductId",
	"t1"."StockOnHand",
	(
		SELECT
			SUM("wp_1"."StockOnHand")
		FROM
			"Issue4717WarehouseProductMapping" "wp_1"
		WHERE
			"wp_1"."WarehouseId" = "source"."WarehouseId"
	)
FROM
	"CTE_1" "source"
		INNER JOIN "Issue4717ProductIncludedProductMapping" "includedProductMapping" ON "source"."ProductId" = "includedProductMapping"."ProductId"
		LEFT JOIN LATERAL (
			SELECT
				"wp"."StockOnHand"
			FROM
				"Issue4717WarehouseProductMapping" "wp"
			WHERE
				"wp"."WarehouseId" = "source"."WarehouseId"
			LIMIT 1
		) "t1" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717WarehouseProductMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717ProductIncludedProductMapping"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Product"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717UnitOfMeasure"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Warehouse"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4717Address"

