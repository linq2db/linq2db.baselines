﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TransactionEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TransactionEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TransactionEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TransactionEntity"
			(
				"Id"      CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"ValidOn" TimeStamp                     NOT NULL,

				CONSTRAINT "PK_TransactionEntity" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'LineEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "LineEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'LineEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "LineEntity"
			(
				"Id"            CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"TransactionId" CHAR(16) CHARACTER SET OCTETS          NOT NULL,
				"Amount"        Decimal(18, 10)                        NOT NULL,
				"Currency"      VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_LineEntity" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"x"."Id",
	"x"."ValidOn"
FROM
	"TransactionEntity" "x"
ORDER BY
	"x"."ValidOn"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'LineEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "LineEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TransactionEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TransactionEntity"';
END

