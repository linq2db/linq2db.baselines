BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TransactionEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TransactionEntity"
(
	"Id"      Char (36) NOT NULL,
	"ValidOn" Timestamp NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LineEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "LineEntity"
(
	"Id"            Char (36)     NOT NULL,
	"TransactionId" Char (36)     NOT NULL,
	"Amount"        Decimal       NOT NULL,
	"Currency"      NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Amount",
	"d"."Currency"
FROM
	"TransactionEntity" "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."ValidOn"
FROM
	"TransactionEntity" "x"
ORDER BY
	"x"."ValidOn"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "LineEntity"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TransactionEntity"

