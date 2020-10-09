BeforeExecute
-- Firebird

CREATE TABLE "StLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float,
	"InMinQuantity" Float,

	CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- Firebird

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
SELECT 1,2,1 FROM rdb$database UNION ALL
SELECT 2,NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "EdtLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float,
	"InMinQuantity" Float,

	CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- Firebird

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
SELECT 2,4,3 FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
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

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
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

BeforeExecute
-- Firebird

DROP TABLE "EdtLink"

BeforeExecute
-- Firebird

DROP TABLE "StLink"

