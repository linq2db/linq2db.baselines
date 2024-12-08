BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "GlobalTaskDTO"
			(
				"Id"                        BINARY(16) NOT NULL,
				"ResourceID"                BINARY(16) NOT NULL,
				"StorageShelfSourceID"      BINARY(16),
				"RPSourceID"                BINARY(16),
				"StorageShelfDestinationID" BINARY(16),
				"RPDestinationID"           BINARY(16),
				"RPOrigDestinationID"       BINARY(16),
				"OutfeedTransportOrderID"   BINARY(16)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_GlobalTaskA"
			(
				"Id"                        BINARY(16) NOT NULL,
				"ResourceID"                BINARY(16) NOT NULL,
				"StorageShelfSourceID"      BINARY(16),
				"RPSourceID"                BINARY(16),
				"StorageShelfDestinationID" BINARY(16),
				"RPDestinationID"           BINARY(16),
				"RPOrigDestinationID"       BINARY(16),
				"OutfeedTransportOrderID"   BINARY(16)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

