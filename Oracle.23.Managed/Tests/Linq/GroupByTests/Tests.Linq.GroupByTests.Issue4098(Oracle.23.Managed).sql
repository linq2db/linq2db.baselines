BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Transaction"
		(
			"InvestorId"    VarChar(255)     NULL,
			"SecurityClass" VarChar(255) NOT NULL,
			"Units"         Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Transaction" ("InvestorId", "SecurityClass", "Units") VALUES ('inv1','test',100)
	INTO "Transaction" ("InvestorId", "SecurityClass", "Units") VALUES ('inv1','test',200)
	INTO "Transaction" ("InvestorId", "SecurityClass", "Units") VALUES ('inv2','test',300)
	INTO "Transaction" ("InvestorId", "SecurityClass", "Units") VALUES ('inv2','test',400)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvestorPayment"
		(
			"Id"         Int          NOT NULL,
			"InvestorId" VarChar(255) NOT NULL,
			"NetPayment" Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "InvestorPayment" ("Id", "InvestorId", "NetPayment") VALUES (1,'inv1',100)
	INTO "InvestorPayment" ("Id", "InvestorId", "NetPayment") VALUES (2,'inv2',200)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PaymentEvent"
		(
			"Id"            Int          NOT NULL,
			"Description"   VarChar(255)     NULL,
			"SecurityClass" VarChar(255) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "PaymentEvent" ("Id", "Description", "SecurityClass") VALUES (1,'one','test')
	INTO "PaymentEvent" ("Id", "Description", "SecurityClass") VALUES (2,'two','test')
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "InvestorPaymentDetail"
		(
			"InvestorId"    VarChar(255)     NULL,
			"CalculationId" Int          NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "InvestorPaymentDetail" ("InvestorId", "CalculationId") VALUES ('inv1',1)
	INTO "InvestorPaymentDetail" ("InvestorId", "CalculationId") VALUES ('inv2',2)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "PaymentCalculation"
		(
			"Id"      Int NOT NULL,
			"EventId" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "PaymentCalculation" ("Id", "EventId") VALUES (1,1)
	INTO "PaymentCalculation" ("Id", "EventId") VALUES (2,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	ip."InvestorId",
	t1."TotalUnits",
	SUM(ip."NetPayment")
FROM
	"PaymentEvent" p
		INNER JOIN "InvestorPayment" ip ON p."Id" = ip."Id"
		INNER JOIN "InvestorPaymentDetail" ipd ON ip."InvestorId" = ipd."InvestorId"
		INNER JOIN "PaymentCalculation" pc ON ipd."CalculationId" = pc."Id" AND p."Id" = pc."EventId"
		INNER JOIN (
			SELECT
				SUM(b."Units") as "TotalUnits",
				b."InvestorId",
				b."SecurityClass"
			FROM
				"Transaction" b
			GROUP BY
				b."SecurityClass",
				b."InvestorId"
		) t1 ON ip."InvestorId" = t1."InvestorId" AND t1."InvestorId" IS NOT NULL AND p."SecurityClass" = t1."SecurityClass"
GROUP BY
	ip."InvestorId",
	t1."TotalUnits"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

