BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4458Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4458Item"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4458Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4458Item"
			(
				"Id" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Issue4458Item"
(
	"Id"
)
SELECT CAST('1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT '2' FROM rdb$database UNION ALL
SELECT '3' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WarehouseStock')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WarehouseStock"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WarehouseStock')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WarehouseStock"
			(
				"ItemId"            VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"QuantityAvailable" Int                                    NOT NULL,
				"WarehouseId"       VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
SELECT CAST('1' AS VarChar(255) CHARACTER SET UNICODE_FSS),10,CAST('A' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Review')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Review"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Review')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Review"
			(
				"ItemId" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"UserId" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"Score"  Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
SELECT CAST('1' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('1' AS VarChar(255) CHARACTER SET UNICODE_FSS),100 FROM rdb$database UNION ALL
SELECT '1','2',90 FROM rdb$database UNION ALL
SELECT '2','1',89 FROM rdb$database UNION ALL
SELECT '2','4',93 FROM rdb$database UNION ALL
SELECT '3','5',91 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"d"."ItemId",
	"d"."UserId",
	"d"."Score"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Issue4458Item" "t1"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Review" "r"
				WHERE
					"r"."ItemId" = "t1"."Id" AND "r"."Score" > 95
			)
	) "m_1"
		INNER JOIN "Review" "d" ON "d"."ItemId" = "m_1"."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"i"."Id",
	(
		SELECT
			SUM("s"."QuantityAvailable")
		FROM
			"WarehouseStock" "s"
		WHERE
			"s"."ItemId" = "i"."Id" AND (
				SELECT
					"stock"."ItemId"
				FROM
					"WarehouseStock" "stock"
				WHERE
					"stock"."ItemId" = "i"."Id"
				GROUP BY
					"stock"."ItemId"
			) = "s"."ItemId"
	)
FROM
	"Issue4458Item" "i"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" "r"
		WHERE
			"r"."ItemId" = "i"."Id" AND "r"."Score" > 95
	)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Review')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Review"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WarehouseStock')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WarehouseStock"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4458Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4458Item"';
END

