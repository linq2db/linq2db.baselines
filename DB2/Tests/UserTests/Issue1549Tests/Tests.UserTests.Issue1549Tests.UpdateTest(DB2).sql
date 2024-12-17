BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_devtypes"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "billing_devtypes"
		(
			"devtypeid"  Int          GENERATED ALWAYS AS IDENTITY NOT NULL,
			"typename"   NVarChar(50)                              NOT NULL,
			"GlobalType" Int                                       NOT NULL,

			CONSTRAINT "PK_billing_devtypes" PRIMARY KEY ("devtypeid")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_devices"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "billing_devices"
		(
			"devid"     NVarChar(50) NOT NULL,
			"sernum"    NVarChar(50)     NULL,
			"devtypeid" Int          NOT NULL,

			CONSTRAINT "PK_billing_devices" PRIMARY KEY ("devid")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_DevReadingType"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "billing_DevReadingType"
		(
			"Id"             Int          GENERATED ALWAYS AS IDENTITY NOT NULL,
			"DevTypeId"      Int                                       NOT NULL,
			"Name"           NVarChar(50)                              NOT NULL,
			"Responsibility" Int                                       NOT NULL,

			CONSTRAINT "PK_billing_DevReadingType" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_TempReading"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "billing_TempReading"
		(
			"id"               Int          GENERATED ALWAYS AS IDENTITY NOT NULL,
			"DevSerNum"        NVarChar(50)                              NOT NULL,
			"devid"            NVarChar(50)                                  NULL,
			"tsdevice"         timestamp                                 NOT NULL,
			"value"            Decimal                                   NOT NULL,
			"Devtypeid"        Int                                           NULL,
			"DevReadingTypeId" Int                                           NULL,
			"ReadingTypeName"  NVarChar(50)                                  NULL,
			"DevGlobalType"    Int                                       NOT NULL,
			"Responsibility"   Int                                       NOT NULL,

			CONSTRAINT "PK_billing_TempReading" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"billing_TempReading"
SET
	("DevReadingTypeId", "Responsibility") = (
		SELECT
			"drt_1"."Id",
			"drt_1"."Responsibility"
		FROM
			"billing_TempReading" "tr_1"
				INNER JOIN "billing_DevReadingType" "drt_1" ON "drt_1"."Name" = "tr_1"."ReadingTypeName" AND "drt_1"."DevTypeId" = "tr_1"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr_1"."id"
	)
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"billing_TempReading" "tr"
				INNER JOIN "billing_DevReadingType" "drt" ON "drt"."Name" = "tr"."ReadingTypeName" AND "drt"."DevTypeId" = "tr"."Devtypeid"
		WHERE
			"billing_TempReading"."id" = "tr"."id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"billing_TempReading" "t1"
SET
	"DevReadingTypeId" = (
		SELECT
			"w"."Id"
		FROM
			"billing_DevReadingType" "w"
		WHERE
			"w"."Name" = "t1"."ReadingTypeName" AND "w"."DevTypeId" = "t1"."Devtypeid"
		FETCH NEXT 1 ROWS ONLY
	),
	"Responsibility" = (
		SELECT
			"w_1"."Responsibility"
		FROM
			"billing_DevReadingType" "w_1"
		WHERE
			"w_1"."Name" = "t1"."ReadingTypeName" AND "w_1"."DevTypeId" = "t1"."Devtypeid"
		FETCH NEXT 1 ROWS ONLY
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_TempReading"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_DevReadingType"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_devices"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "billing_devtypes"';
END

