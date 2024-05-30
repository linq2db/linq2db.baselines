BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Transactions"
		(
			"TransactionId"   Int  NOT NULL,
			"TransactionDate" Date NOT NULL,

			CONSTRAINT "PK_Transactions" PRIMARY KEY ("TransactionId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-02-29-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2021-02-28-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2019-02-28-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-03-29-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-01-29-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-03-01-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-02-28-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-08-09-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2021-08-09-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2019-08-09-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-09-09-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-07-09-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-08-10-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date(20)
SET     @TransactionDate = '2020-08-08-00.00.00.000000'

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
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(day from "t"."TransactionDate")
FROM
	"Transactions" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Transactions"';
END

