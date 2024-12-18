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
DECLARE @TransactionId Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-02-29 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2021-02-28 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2019-02-28 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-03-29 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-01-29 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-03-01 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-02-28 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-08-09 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2021-08-09 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2019-08-09 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-09-09 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-07-09 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-08-10 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @TransactionId Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date
SET     @TransactionDate = TIMESTAMP '2020-08-08 00:00:00.000000'

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	:TransactionId,
	:TransactionDate
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

