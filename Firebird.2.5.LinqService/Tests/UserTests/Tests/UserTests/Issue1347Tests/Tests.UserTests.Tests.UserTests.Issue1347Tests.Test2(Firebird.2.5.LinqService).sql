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

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WmsResourcePointDTO"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StorageShelfDTO"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OutfeedTransportOrderDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "OutfeedTransportOrderDTO"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_OutfeedTransportOrderA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_OutfeedTransportOrderA"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsLoadCarrierDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WmsLoadCarrierDTO"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_LoadCarrierA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_LoadCarrierA"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t4"."Id",
	"t4"."ResourceID",
	"t4"."StorageShelfSourceID",
	"t4"."RPSourceID",
	"t4"."StorageShelfDestinationID",
	"t4"."RPDestinationID",
	"t4"."RPOrigDestinationID",
	"t4"."OutfeedTransportOrderID",
	"res_1"."Id",
	"source"."Id",
	"sourceShelf"."Id",
	"dest"."Id",
	"destShelf"."Id",
	"origdest"."Id",
	"outfeed"."Id"
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
	) "t4"
		LEFT JOIN "WmsResourcePointDTO" "source" ON "t4"."RPSourceID" = "source"."Id" AND "t4"."RPSourceID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON "t4"."StorageShelfSourceID" = "sourceShelf"."Id" AND "t4"."StorageShelfSourceID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "dest" ON "t4"."RPDestinationID" = "dest"."Id" AND "t4"."RPDestinationID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "destShelf" ON "t4"."StorageShelfDestinationID" = "destShelf"."Id" AND "t4"."StorageShelfDestinationID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "origdest" ON "t4"."RPOrigDestinationID" = "origdest"."Id" AND "t4"."RPOrigDestinationID" IS NOT NULL
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
		) "res_1" ON "t4"."ResourceID" = "res_1"."Id"
		LEFT JOIN (
			SELECT
				"outfeed1"."Id"
			FROM
				"OutfeedTransportOrderDTO" "outfeed1"
			UNION
			SELECT
				"t3"."Id"
			FROM
				"WMS_OutfeedTransportOrderA" "t3"
		) "outfeed" ON "t4"."OutfeedTransportOrderID" = "outfeed"."Id" AND "t4"."OutfeedTransportOrderID" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_LoadCarrierA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_LoadCarrierA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsLoadCarrierDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsLoadCarrierDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_OutfeedTransportOrderA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OutfeedTransportOrderDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

