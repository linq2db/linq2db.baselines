BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "StLink"
		(
			"InId"          Int   NOT NULL,
			"InMaxQuantity" Float     NULL,
			"InMinQuantity" Float     NULL,

			CONSTRAINT "PK_StLink" PRIMARY KEY ("InId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InId Integer(4) -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double(8)
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double(8)
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
-- DB2 DB2.LUW DB2LUW
DECLARE @InId Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "EdtLink"
		(
			"InId"          Int   NOT NULL,
			"InMaxQuantity" Float     NULL,
			"InMinQuantity" Float     NULL,

			CONSTRAINT "PK_EdtLink" PRIMARY KEY ("InId")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @InId Integer(4) -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double(8)
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double(8)
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

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "EdtLink"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StLink"';
END

