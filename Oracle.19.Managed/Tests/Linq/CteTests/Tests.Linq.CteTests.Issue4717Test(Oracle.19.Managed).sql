BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Address"
		(
			"Id"       Int          NOT NULL,
			"Address1" VarChar(255)     NULL,
			"City"     VarChar(255)     NULL,
			"State"    VarChar(255)     NULL,
			"Zip"      VarChar(255)     NULL,

			CONSTRAINT "PK_Issue4717Address" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Warehouse"
		(
			"Id"        Int          NOT NULL,
			"Name"      VarChar(255)     NULL,
			"AddressId" Int          NOT NULL,

			CONSTRAINT "PK_Issue4717Warehouse" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717UnitOfMeasure"
		(
			"Id"           Int          NOT NULL,
			"Name"         VarChar(255)     NULL,
			"Abbreviation" VarChar(255)     NULL,

			CONSTRAINT "PK_Issue4717UnitOfMeasure" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717Product"
		(
			"Id"              Int          NOT NULL,
			"Description"     VarChar(255)     NULL,
			"Sku"             VarChar(255)     NULL,
			"UnitOfMeasureId" Int          NOT NULL,

			CONSTRAINT "PK_Issue4717Product" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProductMapping"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717ProductIncludedProductMapping"
		(
			"ProductId"         Int             NOT NULL,
			"IncludedProductId" Int             NOT NULL,
			"Quantity"          Decimal(28, 10) NOT NULL,

			CONSTRAINT "PK_Issue4717ProductIncludedProductMapping" PRIMARY KEY ("ProductId", "IncludedProductId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMapping"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717WarehouseProductMapping"
		(
			"WarehouseId" Int            NOT NULL,
			"ProductId"   Int            NOT NULL,
			"StockOnHand" Decimal(10, 0) NOT NULL,

			CONSTRAINT "PK_Issue4717WarehouseProductMapping" PRIMARY KEY ("WarehouseId", "ProductId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @productId Int32
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
	:productId,
	'123-SKU',
	'Test 123 Sku',
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @includedProductId Int32
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
	:includedProductId,
	'ABC-SKU',
	'Test ABC Sku',
	1
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @productId Int32
SET     @productId = 1
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717ProductIncludedProductMapping"
(
	"ProductId",
	"IncludedProductId",
	"Quantity"
)
VALUES
(
	:productId,
	:includedProductId,
	10
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @productId Int32
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
	:productId,
	10
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @productId Int32
SET     @productId = 1

WITH CTE_1 ("ProductId", "WarehouseId")
AS
(
	SELECT
		:productId,
		w."Id"
	FROM
		"Issue4717Warehouse" w
)
SELECT
	source."ProductId",
	(
		SELECT
			wp."StockOnHand"
		FROM
			"Issue4717WarehouseProductMapping" wp
		WHERE
			wp."WarehouseId" = source."WarehouseId"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			SUM(wp_1."StockOnHand")
		FROM
			"Issue4717WarehouseProductMapping" wp_1
		WHERE
			wp_1."WarehouseId" = source."WarehouseId"
	)
FROM
	CTE_1 source
		INNER JOIN "Issue4717ProductIncludedProductMapping" includedProductMapping ON source."ProductId" = includedProductMapping."ProductId"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMapping"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProductMapping"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

