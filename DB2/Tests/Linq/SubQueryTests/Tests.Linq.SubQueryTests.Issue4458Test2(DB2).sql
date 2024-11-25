BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4458Item"
		(
			"Id" NVarChar(255) NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4458Item"
(
	"Id"
)
VALUES
('1'),
('2'),
('3')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "WarehouseStock"
		(
			"ItemId"            NVarChar(255) NOT NULL,
			"QuantityAvailable" Int           NOT NULL,
			"WarehouseId"       NVarChar(255) NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "WarehouseStock"
(
	"ItemId",
	"QuantityAvailable",
	"WarehouseId"
)
VALUES
('1',10,'A')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Review"
		(
			"ItemId" NVarChar(255) NOT NULL,
			"UserId" NVarChar(255) NOT NULL,
			"Score"  Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Review"
(
	"ItemId",
	"UserId",
	"Score"
)
VALUES
('1','1',100),
('1','2',90),
('2','1',89),
('2','4',93),
('3','5',91)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
					1
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
-- DB2 DB2.LUW DB2LUW

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
			1
		FROM
			"Review" "r"
		WHERE
			"r"."ItemId" = "i"."Id" AND "r"."Score" > 95
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Review"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WarehouseStock"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4458Item"';
END

