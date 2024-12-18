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

INSERT INTO "Transactions"
(
	"TransactionId",
	"TransactionDate"
)
SELECT 1,CAST('2020-02-29' AS date) FROM rdb$database UNION ALL
SELECT 2,CAST('2021-02-28' AS date) FROM rdb$database UNION ALL
SELECT 3,CAST('2019-02-28' AS date) FROM rdb$database UNION ALL
SELECT 4,CAST('2020-03-29' AS date) FROM rdb$database UNION ALL
SELECT 5,CAST('2020-01-29' AS date) FROM rdb$database UNION ALL
SELECT 6,CAST('2020-03-01' AS date) FROM rdb$database UNION ALL
SELECT 7,CAST('2020-02-28' AS date) FROM rdb$database UNION ALL
SELECT 8,CAST('2020-08-09' AS date) FROM rdb$database UNION ALL
SELECT 9,CAST('2021-08-09' AS date) FROM rdb$database UNION ALL
SELECT 10,CAST('2019-08-09' AS date) FROM rdb$database UNION ALL
SELECT 11,CAST('2020-09-09' AS date) FROM rdb$database UNION ALL
SELECT 12,CAST('2020-07-09' AS date) FROM rdb$database UNION ALL
SELECT 13,CAST('2020-08-10' AS date) FROM rdb$database UNION ALL
SELECT 14,CAST('2020-08-08' AS date) FROM rdb$database

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

