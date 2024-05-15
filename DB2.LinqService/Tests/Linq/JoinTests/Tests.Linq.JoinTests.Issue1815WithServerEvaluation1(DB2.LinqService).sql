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
-- DB2 DB2.LUW DB2LUW

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

