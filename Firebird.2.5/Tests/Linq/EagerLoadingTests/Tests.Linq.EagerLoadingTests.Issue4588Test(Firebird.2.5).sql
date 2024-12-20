BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Order')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Order"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Order')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Order"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubOrder"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrder')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SubOrder"
			(
				"Id"      Int NOT NULL,
				"OrderId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrderDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubOrderDetail"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrderDetail')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SubOrderDetail"
			(
				"Id"         Int                                    NOT NULL,
				"SubOrderId" Int                                    NOT NULL,
				"Code"       VarChar(255) CHARACTER SET UNICODE_FSS,
				"Date"       TimeStamp                              NOT NULL,
				"IsActive"   CHAR(1)                                NOT NULL
			)
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @skip Integer -- Int32
SET     @skip = 100

SELECT
	"m_1"."Id",
	"m_1"."Id_1",
	"d_1"."Id",
	"d_1"."SubOrderId",
	"d_1"."Code",
	"d_1"."Date",
	"d_1"."IsActive"
FROM
	(
		SELECT DISTINCT
			"d"."Id",
			"t2"."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					"t1"."Id"
				FROM
					(
						SELECT FIRST @take SKIP @skip
							"x"."Id"
						FROM
							"Order" "x"
						WHERE
							"x"."Name" STARTING WITH 'cat'
						ORDER BY
							"x"."Id"
					) "t1"
			) "t2"
				INNER JOIN "SubOrder" "d" ON "t2"."Id" = "d"."OrderId"
	) "m_1"
		INNER JOIN "SubOrderDetail" "d_1" ON "m_1"."Id" = "d_1"."SubOrderId"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @skip Integer -- Int32
SET     @skip = 100

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."OrderId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT FIRST @take SKIP @skip
					"x"."Id"
				FROM
					"Order" "x"
				WHERE
					"x"."Name" STARTING WITH 'cat'
				ORDER BY
					"x"."Id"
			) "t1"
	) "m_1"
		INNER JOIN "SubOrder" "d" ON "m_1"."Id" = "d"."OrderId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @skip Integer -- Int32
SET     @skip = 100

SELECT FIRST @take SKIP @skip
	"x"."Id",
	"x"."Name"
FROM
	"Order" "x"
WHERE
	"x"."Name" STARTING WITH 'cat'
ORDER BY
	"x"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrderDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubOrderDetail"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubOrder')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubOrder"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Order')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Order"';
END

