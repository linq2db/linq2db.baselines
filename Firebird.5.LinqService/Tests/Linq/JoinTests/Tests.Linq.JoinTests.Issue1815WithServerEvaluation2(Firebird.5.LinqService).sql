BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StLink"
			(
				"InId"          Int   NOT NULL,
				"InMaxQuantity" Float,
				"InMinQuantity" Float,

				CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @InId Integer -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 1

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @InId Integer -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Double
SET     @InMinQuantity = NULL

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EdtLink"
			(
				"InId"          Int   NOT NULL,
				"InMaxQuantity" Float,
				"InMinQuantity" Float,

				CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @InId Integer -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double
SET     @InMinQuantity = 3

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."InId",
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMinQuantity"
		ELSE "e"."InMinQuantity"
	END,
	CASE
		WHEN "e"."InId" IS NULL THEN "t1"."InMaxQuantity"
		ELSE "e"."InMaxQuantity"
	END
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 2
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

