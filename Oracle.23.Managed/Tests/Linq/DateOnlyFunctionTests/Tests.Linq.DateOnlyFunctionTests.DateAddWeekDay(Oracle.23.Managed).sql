BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
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
		CREATE TABLE "Transactions"
		(
			"TransactionId"   Int  NOT NULL,
			"TransactionDate" date NOT NULL,

			CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
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
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (1,DATE '2020-02-29')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (2,DATE '2021-02-28')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (3,DATE '2019-02-28')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (4,DATE '2020-03-29')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (5,DATE '2020-01-29')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (6,DATE '2020-03-01')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (7,DATE '2020-02-28')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (8,DATE '2020-08-09')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (9,DATE '2021-08-09')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (10,DATE '2019-08-09')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (11,DATE '2020-09-09')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (12,DATE '2020-07-09')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (13,DATE '2020-08-10')
	INTO "Transactions" ("TransactionId", "TransactionDate") VALUES (14,DATE '2020-08-08')
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + INTERVAL '1' DAY
FROM
	"Transactions" t

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

