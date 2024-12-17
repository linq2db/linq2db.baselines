BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProduc"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717ProductIncludedProduc"
		(
			"ProductId"         Int             NOT NULL,
			"IncludedProductId" Int             NOT NULL,
			"Quantity"          Decimal(28, 10) NOT NULL,

			CONSTRAINT "PK_Issue4717ProductInclude" PRIMARY KEY ("ProductId", "IncludedProductId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMappi"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4717WarehouseProductMappi"
		(
			"WarehouseId" Int            NOT NULL,
			"ProductId"   Int            NOT NULL,
			"StockOnHand" Decimal(10, 0) NOT NULL,

			CONSTRAINT "PK_Issue4717WarehouseProdu" PRIMARY KEY ("WarehouseId", "ProductId")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
DECLARE @productId Int32
SET     @productId = 1
DECLARE @includedProductId Int32
SET     @includedProductId = 2

INSERT INTO "Issue4717ProductIncludedProduc"
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
-- Oracle.11.Managed Oracle11
DECLARE @productId Int32
SET     @productId = 1

INSERT INTO "Issue4717WarehouseProductMappi"
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
-- Oracle.11.Managed Oracle11
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
	t1."cond",
	(
		SELECT
			SUM(wp_1."StockOnHand")
		FROM
			"Issue4717WarehouseProductMappi" wp_1
		WHERE
			wp_1."WarehouseId" = source."WarehouseId"
	)
FROM
	CTE_1 source
		INNER JOIN "Issue4717ProductIncludedProduc" includedProductMapping ON source."ProductId" = includedProductMapping."ProductId"
		LEFT JOIN (
			SELECT
				wp."StockOnHand" as "cond",
				ROW_NUMBER() OVER (PARTITION BY wp."WarehouseId" ORDER BY wp."WarehouseId") as "rn",
				wp."WarehouseId"
			FROM
				"Issue4717WarehouseProductMappi" wp
		) t1 ON t1."WarehouseId" = source."WarehouseId" AND t1."rn" <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717WarehouseProductMappi"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717ProductIncludedProduc"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Product"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717UnitOfMeasure"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Warehouse"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4717Address"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

