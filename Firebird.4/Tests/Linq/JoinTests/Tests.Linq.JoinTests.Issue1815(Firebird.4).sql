﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
SELECT 1,2,1 FROM rdb$database UNION ALL
SELECT 2,NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
SELECT 2,4,3 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"x"."InId",
	"j"."InId",
	"j"."InMaxQuantity",
	"j"."InMinQuantity",
	"x"."InMinQuantity",
	"x"."InMaxQuantity"
FROM
	"StLink" "x"
		LEFT JOIN "EdtLink" "j" ON "x"."InId" = "j"."InId"
WHERE
	"x"."InId" = 1
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"x"."InId",
	"j"."InId",
	"j"."InMaxQuantity",
	"j"."InMinQuantity",
	"x"."InMinQuantity",
	"x"."InMaxQuantity"
FROM
	"StLink" "x"
		LEFT JOIN "EdtLink" "j" ON "x"."InId" = "j"."InId"
WHERE
	"x"."InId" = 2
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EdtLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StLink')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StLink"';
END

