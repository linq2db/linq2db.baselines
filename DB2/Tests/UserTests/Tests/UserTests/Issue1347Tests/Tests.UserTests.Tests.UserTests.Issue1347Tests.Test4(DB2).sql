BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "GlobalTaskDTO"
		(
			"Id"                        char(16) for bit data NOT NULL,
			"ResourceID"                char(16) for bit data NOT NULL,
			"StorageShelfSourceID"      char(16) for bit data,
			"RPSourceID"                char(16) for bit data,
			"StorageShelfDestinationID" char(16) for bit data,
			"RPDestinationID"           char(16) for bit data,
			"RPOrigDestinationID"       char(16) for bit data,
			"OutfeedTransportOrderID"   char(16) for bit data
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "WMS_GlobalTaskA"
		(
			"Id"                        char(16) for bit data NOT NULL,
			"ResourceID"                char(16) for bit data NOT NULL,
			"StorageShelfSourceID"      char(16) for bit data,
			"RPSourceID"                char(16) for bit data,
			"StorageShelfDestinationID" char(16) for bit data,
			"RPDestinationID"           char(16) for bit data,
			"RPOrigDestinationID"       char(16) for bit data,
			"OutfeedTransportOrderID"   char(16) for bit data
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."ResourceID",
	"t1"."StorageShelfSourceID",
	"t1"."RPSourceID",
	"t1"."StorageShelfDestinationID",
	"t1"."RPDestinationID",
	"t1"."RPOrigDestinationID",
	"t1"."OutfeedTransportOrderID"
FROM
	"GlobalTaskDTO" "t1"
UNION
SELECT
	"t2"."Id",
	"t2"."ResourceID",
	"t2"."StorageShelfSourceID",
	"t2"."RPSourceID",
	"t2"."StorageShelfDestinationID",
	"t2"."RPDestinationID",
	"t2"."RPOrigDestinationID",
	"t2"."OutfeedTransportOrderID"
FROM
	"WMS_GlobalTaskA" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "GlobalTaskDTO"';
END

