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
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id VarChar(1) -- String
SET     @Id = '2'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id VarChar(1) -- String
SET     @Id = '3'

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
(
	@Id
)

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
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable Integer -- Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId VarChar(1) -- String
SET     @WarehouseId = 'A'

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
VALUES
(
	@ItemId,
	@QuantityAvailable,
	@WarehouseId
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
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
SET     @Score = 100

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '2'
DECLARE @Score Integer -- Int32
SET     @Score = 90

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
SET     @Score = 89

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '4'
DECLARE @Score Integer -- Int32
SET     @Score = 93

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ItemId VarChar(1) -- String
SET     @ItemId = '3'
DECLARE @UserId VarChar(1) -- String
SET     @UserId = '5'
DECLARE @Score Integer -- Int32
SET     @Score = 91

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

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
			 EXISTS (
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
	 EXISTS (
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

