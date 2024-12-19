BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Address"
		(
			"Id"       Int           NOT NULL,
			"Address1" NVarChar(255)     NULL,
			"City"     NVarChar(255)     NULL,
			"State"    NVarChar(255)     NULL,
			"Zip"      NVarChar(255)     NULL,

			CONSTRAINT "PK_Issue4717Address" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Warehouse"
		(
			"Id"        Int           NOT NULL,
			"Name"      NVarChar(255)     NULL,
			"AddressId" Int           NOT NULL,

			CONSTRAINT "PK_Issue4717Warehouse" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717UnitOfMeasure"
		(
			"Id"           Int           NOT NULL,
			"Name"         NVarChar(255)     NULL,
			"Abbreviation" NVarChar(255)     NULL,

			CONSTRAINT "PK_Issue4717UnitOfMeasure" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Product"
		(
			"Id"              Int           NOT NULL,
			"Description"     NVarChar(255)     NULL,
			"Sku"             NVarChar(255)     NULL,
			"UnitOfMeasureId" Int           NOT NULL,

			CONSTRAINT "PK_Issue4717Product" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProductMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717ProductIncludedProductMapping"
		(
			"ProductId"         Int     NOT NULL,
			"IncludedProductId" Int     NOT NULL,
			"Quantity"          Decimal NOT NULL,

			CONSTRAINT "PK_Issue4717ProductIncludedProductMapping" PRIMARY KEY ("ProductId", "IncludedProductId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717WarehouseProductMapping"
		(
			"WarehouseId" Int            NOT NULL,
			"ProductId"   Int            NOT NULL,
			"StockOnHand" Decimal(10, 0) NOT NULL,

			CONSTRAINT "PK_Issue4717WarehouseProductMapping" PRIMARY KEY ("WarehouseId", "ProductId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @productId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @includedProductId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @productId Integer(4) -- Int32
SET     @productId = 1
DECLARE @includedProductId Integer(4) -- Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717ProductIncludedProductMapping"
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
-- DB2 DB2.LUW DB2LUW
DECLARE @productId Integer(4) -- Int32
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
	@productId,
	10
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @productId Integer(4) -- Int32
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
			"Issue4717WarehouseProductMapping" "wp"
		WHERE
			"wp"."WarehouseId" = "source"."WarehouseId"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			SUM("wp_1"."StockOnHand")
		FROM
			"Issue4717WarehouseProductMapping" "wp_1"
		WHERE
			"wp_1"."WarehouseId" = "source"."WarehouseId"
	)
FROM
	CTE_1 "source"
		INNER JOIN "Issue4717ProductIncludedProductMapping" "includedProductMapping" ON "source"."ProductId" = "includedProductMapping"."ProductId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProductMapping"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
END

