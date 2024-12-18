BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Product"';
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
		CREATE TABLE "Product"
		(
			"Id"         Int          NOT NULL,
			"Name"       VarChar(255) NOT NULL,
			"CategoryId" Int          NOT NULL,

			CONSTRAINT "PK_Product" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "ProductCategory"';
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
		CREATE TABLE "ProductCategory"
		(
			"Id"                 Int          NOT NULL,
			"Name"               VarChar(255) NOT NULL,
			"ProductOrderLimit"  SmallInt     NOT NULL,
			"CustomerOrderLimit" SmallInt     NOT NULL,
			"PeriodOrderLimit"   SmallInt     NOT NULL,

			CONSTRAINT "PK_ProductCategory" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "OrderHeader"';
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
		CREATE TABLE "OrderHeader"
		(
			"Id"       Int NOT NULL,
			"PeriodId" Int NOT NULL,

			CONSTRAINT "PK_OrderHeader" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "OrderItem"';
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
		CREATE TABLE "OrderItem"
		(
			"Id"            Int      NOT NULL,
			"OrderHeaderId" Int      NOT NULL,
			"ProductId"     Int      NOT NULL,
			"Quantity"      SmallInt NOT NULL,

			CONSTRAINT "PK_OrderItem" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "OrderPeriod"';
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
		CREATE TABLE "OrderPeriod"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_OrderPeriod" PRIMARY KEY ("Id")
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
	EXECUTE IMMEDIATE 'DROP TABLE "ProductsPerOrderPeriod"';
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
		CREATE TABLE "ProductsPerOrderPeriod"
		(
			"Id"            Int NOT NULL,
			"OrderPeriodId" Int NOT NULL,
			"ProductId"     Int NOT NULL,

			CONSTRAINT "PK_ProductsPerOrderPeriod" PRIMARY KEY ("Id")
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
DECLARE @take Int32
SET     @take = 10

SELECT
	r."OrderPeriodId",
	r."ProductId",
	r."CategoryId",
	r."MaxCapacity",
	r."Quantity",
	r."MaxCapacity" - r."Quantity" as "FreeCapacity",
	v2_1."MaxCapacity" as "MaxCapacity_1",
	v2_1."Quantity" as "Quantity_1",
	v2_1."FreeCapacity" as "FreeCapacity_1"
FROM
	(
		SELECT
			op."Id" as "OrderPeriodId",
			vpc."CategoryId",
			pop."ProductId",
			COALESCE(CAST(pcc."PeriodOrderLimit" AS Int),0) as "MaxCapacity",
			COALESCE(vsp_1."Quantity",0) as "Quantity"
		FROM
			"OrderPeriod" op
				INNER JOIN "ProductsPerOrderPeriod" pop ON op."Id" = pop."OrderPeriodId"
				LEFT JOIN "Product" vpc ON vpc."Id" = pop."ProductId"
				LEFT JOIN "ProductCategory" pcc ON pcc."Id" = vpc."CategoryId"
				LEFT JOIN (
					SELECT
						vsp."OrderPeriodId",
						vsp."ProductId",
						COALESCE(vsp."Quantity",0) as "Quantity"
					FROM
						(
							SELECT
								agroup."Id" as "OrderPeriodId",
								oi."ProductId",
								SUM(CAST(COALESCE(oi."Quantity",0) AS Int)) as "Quantity"
							FROM
								"OrderPeriod" agroup
									LEFT JOIN "OrderHeader" oh ON agroup."Id" = oh."PeriodId"
									LEFT JOIN "OrderItem" oi ON oh."Id" = oi."OrderHeaderId"
							GROUP BY
								agroup."Id",
								oi."ProductId"
						) vsp
				) vsp_1 ON vsp_1."OrderPeriodId" = op."Id" AND vsp_1."ProductId" = pop."ProductId" AND vsp_1."ProductId" IS NOT NULL
	) r
		LEFT JOIN (
			SELECT
				COALESCE(CAST(vpcc."PeriodOrderLimit" AS Int),0) as "MaxCapacity",
				vsopc."Quantity",
				COALESCE(CAST(vpcc."PeriodOrderLimit" AS Int),0) - vsopc."Quantity" as "FreeCapacity",
				v2."Id",
				vpcc."Id" as "Id_1"
			FROM
				"OrderPeriod" v2
					CROSS JOIN "ProductCategory" vpcc
					LEFT JOIN (
						SELECT
							agroup_1."Id" as "OrderPeriodId",
							p."CategoryId",
							SUM(CAST(oi_1."Quantity" AS Int)) as "Quantity"
						FROM
							"OrderPeriod" agroup_1
								LEFT JOIN "OrderHeader" oh_1 ON agroup_1."Id" = oh_1."PeriodId"
								LEFT JOIN "OrderItem" oi_1 ON oh_1."Id" = oi_1."OrderHeaderId"
								LEFT JOIN "Product" p ON p."Id" = oi_1."ProductId"
						GROUP BY
							agroup_1."Id",
							p."CategoryId"
					) vsopc ON vsopc."OrderPeriodId" = v2."Id" AND vsopc."CategoryId" = vpcc."Id" AND vsopc."CategoryId" IS NOT NULL
		) v2_1 ON v2_1."Id" = r."OrderPeriodId" AND v2_1."Id_1" = r."CategoryId" AND r."CategoryId" IS NOT NULL
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ProductsPerOrderPeriod"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderPeriod"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderItem"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "OrderHeader"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ProductCategory"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Product"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

