BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "StLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "StLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "EdtLink"
(
	"InId"          Int   NOT NULL,
	"InMaxQuantity" Float     NULL,
	"InMinQuantity" Float     NULL,

	CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "EdtLink"
(
	"InId",
	"InMaxQuantity",
	"InMinQuantity"
)
VALUES
(2,4,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "EdtLink"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "StLink"

