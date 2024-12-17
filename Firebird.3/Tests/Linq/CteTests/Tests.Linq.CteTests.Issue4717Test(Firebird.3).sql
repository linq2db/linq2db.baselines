BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Address')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Address"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Address')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717Address"
			(
				"Id"       Int                                    NOT NULL,
				"Address1" VarChar(255) CHARACTER SET UNICODE_FSS,
				"City"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"State"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Zip"      VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue4717Address" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Warehouse')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Warehouse"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Warehouse')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717Warehouse"
			(
				"Id"        Int                                    NOT NULL,
				"Name"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"AddressId" Int                                    NOT NULL,

				CONSTRAINT "PK_Issue4717Warehouse" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717UnitOfMeasure')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717UnitOfMeasure"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717UnitOfMeasure')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717UnitOfMeasure"
			(
				"Id"           Int                                    NOT NULL,
				"Name"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"Abbreviation" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue4717UnitOfMeasure" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Product"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Product')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717Product"
			(
				"Id"              Int                                    NOT NULL,
				"Description"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"Sku"             VarChar(255) CHARACTER SET UNICODE_FSS,
				"UnitOfMeasureId" Int                                    NOT NULL,

				CONSTRAINT "PK_Issue4717Product" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717ProductIncludedProduct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717ProductIncludedProduct"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717ProductIncludedProduct')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717ProductIncludedProduct"
			(
				"ProductId"         Int             NOT NULL,
				"IncludedProductId" Int             NOT NULL,
				"Quantity"          Decimal(18, 10) NOT NULL,

				CONSTRAINT "PK_Issue4717ProductIncluded" PRIMARY KEY ("ProductId", "IncludedProductId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717WarehouseProductMappin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717WarehouseProductMappin"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717WarehouseProductMappin')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4717WarehouseProductMappin"
			(
				"WarehouseId" Int            NOT NULL,
				"ProductId"   Int            NOT NULL,
				"StockOnHand" Decimal(10, 0) NOT NULL,

				CONSTRAINT "PK_Issue4717WarehouseProduc" PRIMARY KEY ("WarehouseId", "ProductId")
			)
		';
END

BeforeExecute
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

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717WarehouseProductMappin')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717WarehouseProductMappin"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717ProductIncludedProduct')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717ProductIncludedProduct"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Product')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Product"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717UnitOfMeasure')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717UnitOfMeasure"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Warehouse')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Warehouse"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4717Address')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4717Address"';
END

