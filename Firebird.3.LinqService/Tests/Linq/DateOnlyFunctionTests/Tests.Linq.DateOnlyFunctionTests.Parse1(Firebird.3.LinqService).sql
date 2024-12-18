BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transactions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transactions"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transactions')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Transactions"
			(
				"TransactionId"   Int  NOT NULL,
				"TransactionDate" Date NOT NULL,

				CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-02-29' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2021-02-28' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2019-02-28' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-03-29' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-01-29' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-03-01' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-02-28' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-09' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2021-08-09' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2019-08-09' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-09-09' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-07-09' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-10' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-08' AS date)

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)
FROM
	"Transactions" "t"
WHERE
	Extract(day from CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)) > 0 AND
	Extract(day from CAST('2010-01-' || Lpad("t"."TransactionId",2,'0') AS Date)) IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."TransactionId",
	"t1"."TransactionDate"
FROM
	"Transactions" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Transactions')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Transactions"';
END

