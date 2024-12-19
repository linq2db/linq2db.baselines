BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Transaction"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Transaction"
(
	"InvestorId"    NVarChar(255)     NULL,
	"SecurityClass" NVarChar(255) NOT NULL,
	"Units"         Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units  -- Int32
SET     @Units = 100

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units  -- Int32
SET     @Units = 200

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units  -- Int32
SET     @Units = 300

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'
DECLARE @Units  -- Int32
SET     @Units = 400

INSERT INTO "Transaction"
(
	"InvestorId",
	"SecurityClass",
	"Units"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InvestorPayment"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "InvestorPayment"
(
	"Id"         Integer       NOT NULL,
	"InvestorId" NVarChar(255) NOT NULL,
	"NetPayment" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @NetPayment  -- Int32
SET     @NetPayment = 100

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @NetPayment  -- Int32
SET     @NetPayment = 200

INSERT INTO "InvestorPayment"
(
	"Id",
	"InvestorId",
	"NetPayment"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PaymentEvent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PaymentEvent"
(
	"Id"            Integer       NOT NULL,
	"Description"   NVarChar(255)     NULL,
	"SecurityClass" NVarChar(255) NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Description NVarChar(3) -- String
SET     @Description = 'one'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Description NVarChar(3) -- String
SET     @Description = 'two'
DECLARE @SecurityClass NVarChar(4) -- String
SET     @SecurityClass = 'test'

INSERT INTO "PaymentEvent"
(
	"Id",
	"Description",
	"SecurityClass"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InvestorPaymentDetail"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "InvestorPaymentDetail"
(
	"InvestorId"    NVarChar(255)     NULL,
	"CalculationId" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv1'
DECLARE @CalculationId  -- Int32
SET     @CalculationId = 1

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @InvestorId NVarChar(4) -- String
SET     @InvestorId = 'inv2'
DECLARE @CalculationId  -- Int32
SET     @CalculationId = 2

INSERT INTO "InvestorPaymentDetail"
(
	"InvestorId",
	"CalculationId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PaymentCalculation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PaymentCalculation"
(
	"Id"      Integer NOT NULL,
	"EventId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @EventId  -- Int32
SET     @EventId = 1

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @EventId  -- Int32
SET     @EventId = 2

INSERT INTO "PaymentCalculation"
(
	"Id",
	"EventId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ip"."InvestorId",
	"t1"."TotalUnits",
	SUM("ip"."NetPayment")
FROM
	"PaymentEvent" "p"
		INNER JOIN "InvestorPayment" "ip" ON "p"."Id" = "ip"."Id"
		INNER JOIN "InvestorPaymentDetail" "ipd" ON "ip"."InvestorId" = "ipd"."InvestorId"
		INNER JOIN "PaymentCalculation" "pc" ON "ipd"."CalculationId" = "pc"."Id" AND "p"."Id" = "pc"."EventId"
		INNER JOIN (
			SELECT
				SUM("b"."Units") as "TotalUnits",
				"b"."InvestorId",
				"b"."SecurityClass"
			FROM
				"Transaction" "b"
			GROUP BY
				"b"."SecurityClass",
				"b"."InvestorId"
		) "t1" ON "ip"."InvestorId" = "t1"."InvestorId" AND "p"."SecurityClass" = "t1"."SecurityClass"
GROUP BY
	"ip"."InvestorId",
	"t1"."TotalUnits"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PaymentCalculation"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InvestorPaymentDetail"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PaymentEvent"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InvestorPayment"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Transaction"

