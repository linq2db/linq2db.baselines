BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "GlobalTaskDTO"
			(
				"Id"                        CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"ResourceID"                CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"StorageShelfSourceID"      CHAR(16) CHARACTER SET OCTETS,
				"RPSourceID"                CHAR(16) CHARACTER SET OCTETS,
				"StorageShelfDestinationID" CHAR(16) CHARACTER SET OCTETS,
				"RPDestinationID"           CHAR(16) CHARACTER SET OCTETS,
				"RPOrigDestinationID"       CHAR(16) CHARACTER SET OCTETS,
				"OutfeedTransportOrderID"   CHAR(16) CHARACTER SET OCTETS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_GlobalTaskA"
			(
				"Id"                        CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"ResourceID"                CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"StorageShelfSourceID"      CHAR(16) CHARACTER SET OCTETS,
				"RPSourceID"                CHAR(16) CHARACTER SET OCTETS,
				"StorageShelfDestinationID" CHAR(16) CHARACTER SET OCTETS,
				"RPDestinationID"           CHAR(16) CHARACTER SET OCTETS,
				"RPOrigDestinationID"       CHAR(16) CHARACTER SET OCTETS,
				"OutfeedTransportOrderID"   CHAR(16) CHARACTER SET OCTETS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

