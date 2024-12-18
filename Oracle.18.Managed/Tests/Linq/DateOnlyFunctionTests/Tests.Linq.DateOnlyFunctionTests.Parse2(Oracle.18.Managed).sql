BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	d."Day_2"
FROM
	(
		SELECT
			EXTRACT(DAY FROM t."TransactionDate") as "Day_1",
			t."TransactionDate" as "Day_2"
		FROM
			"Transactions" t
	) d
WHERE
	d."Day_1" > 0 AND d."Day_1" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

