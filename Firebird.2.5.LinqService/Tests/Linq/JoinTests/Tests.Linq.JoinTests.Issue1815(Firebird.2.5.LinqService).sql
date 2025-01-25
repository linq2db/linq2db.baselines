BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."InId",
	"e"."InId",
	"t1"."InMinQuantity",
	"e"."InMinQuantity",
	"t1"."InMaxQuantity",
	"e"."InMaxQuantity"
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."InId",
	"e"."InId",
	"t1"."InMinQuantity",
	"e"."InMinQuantity",
	"t1"."InMaxQuantity",
	"e"."InMaxQuantity"
FROM
	"StLink" "t1"
		LEFT JOIN "EdtLink" "e" ON "t1"."InId" = "e"."InId"
WHERE
	"t1"."InId" = 2

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

