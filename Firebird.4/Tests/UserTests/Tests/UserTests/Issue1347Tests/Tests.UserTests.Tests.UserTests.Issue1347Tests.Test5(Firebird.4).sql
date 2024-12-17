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

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsLoadCarrierDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WmsLoadCarrierDTO"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_LoadCarrierA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_LoadCarrierA"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t3"."Id",
	"t3"."ResourceID",
	"t3"."StorageShelfSourceID",
	"t3"."RPSourceID",
	"t3"."StorageShelfDestinationID",
	"t3"."RPDestinationID",
	"t3"."RPOrigDestinationID",
	"t3"."OutfeedTransportOrderID",
	"res_1"."Id"
FROM
	(
		SELECT
			"g_1"."Id",
			"g_1"."ResourceID",
			"g_1"."StorageShelfSourceID",
			"g_1"."RPSourceID",
			"g_1"."StorageShelfDestinationID",
			"g_1"."RPDestinationID",
			"g_1"."RPOrigDestinationID",
			"g_1"."OutfeedTransportOrderID"
		FROM
			"GlobalTaskDTO" "g_1"
		UNION
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
			"WMS_GlobalTaskA" "t1"
	) "t3"
		LEFT JOIN (
			SELECT
				"res"."Id"
			FROM
				"WmsLoadCarrierDTO" "res"
			UNION
			SELECT
				"t2"."Id"
			FROM
				"WMS_LoadCarrierA" "t2"
		) "res_1" ON "t3"."ResourceID" = "res_1"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_LoadCarrierA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsLoadCarrierDTO"';
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

