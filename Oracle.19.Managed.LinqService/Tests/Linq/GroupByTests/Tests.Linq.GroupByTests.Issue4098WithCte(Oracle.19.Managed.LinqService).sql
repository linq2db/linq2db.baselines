BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 100

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 200

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 300

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units Int32
SET     @Units = 400

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	:InvestorId,
	:SecurityClass,
	:Units
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment Int32
SET     @NetPayment = 100

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	:Id,
	:InvestorId,
	:NetPayment
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment Int32
SET     @NetPayment = 200

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	:Id,
	:InvestorId,
	:NetPayment
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Description Varchar2(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	:Id,
	:Description,
	:SecurityClass
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Description Varchar2(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass Varchar2(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	:Id,
	:Description,
	:SecurityClass
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId Int32
SET     @CalculationId = 1

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	:InvestorId,
	:CalculationId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @InvestorId Varchar2(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId Int32
SET     @CalculationId = 2

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	:InvestorId,
	:CalculationId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @EventId Int32
SET     @EventId = 1

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	:Id,
	:EventId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @EventId Int32
SET     @EventId = 2

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	:Id,
	:EventId
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

WITH CTE_1 ("InvestorId", "SecurityClass", "Units")
AS
(
	SELECT
		g_1."InvestorId",
		g_1."SecurityClass",
		SUM(g_1."Units")
	FROM
		"Transaction" g_1
	GROUP BY
		g_1."SecurityClass",
		g_1."InvestorId"
)
SELECT
	ip."InvestorId",
	b."Units",
	SUM(ip."NetPayment")
FROM
	"PaymentEvent" g_2
		INNER JOIN "InvestorPayment" ip ON g_2."Id" = ip."Id"
		INNER JOIN "InvestorPaymentDetail" ipd ON ip."InvestorId" = ipd."InvestorId"
		INNER JOIN "PaymentCalculation" pc ON ipd."CalculationId" = pc."Id" AND g_2."Id" = pc."EventId"
		INNER JOIN CTE_1 b ON ip."InvestorId" = b."InvestorId" AND g_2."SecurityClass" = b."SecurityClass"
GROUP BY
	ip."InvestorId",
	b."Units"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentCalculation"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPaymentDetail"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PaymentEvent"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InvestorPayment"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

