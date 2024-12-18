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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_ResourceA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_ResourceA"
			(
				"Id" CHAR(16) CHARACTER SET OCTETS NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"tp12"."Id",
	"tp12"."ResourceID",
	"tp12"."StorageShelfSourceID",
	"tp12"."RPSourceID",
	"tp12"."StorageShelfDestinationID",
	"tp12"."RPDestinationID",
	"tp12"."RPOrigDestinationID",
	"tp12"."OutfeedTransportOrderID",
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
			"tp0"."Id",
			"tp0"."ResourceID",
			"tp0"."StorageShelfSourceID",
			"tp0"."RPSourceID",
			"tp0"."StorageShelfDestinationID",
			"tp0"."RPDestinationID",
			"tp0"."RPOrigDestinationID",
			"tp0"."OutfeedTransportOrderID"
		FROM
			"GlobalTaskDTO" "tp0"
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
	) "tp12"
		LEFT JOIN "WmsResourcePointDTO" "source" ON "tp12"."RPSourceID" = "source"."Id" AND "tp12"."RPSourceID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON "tp12"."StorageShelfSourceID" = "sourceShelf"."Id" AND "tp12"."StorageShelfSourceID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "dest" ON "tp12"."RPDestinationID" = "dest"."Id" AND "tp12"."RPDestinationID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "destShelf" ON "tp12"."StorageShelfDestinationID" = "destShelf"."Id" AND "tp12"."StorageShelfDestinationID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "origdest" ON "tp12"."RPOrigDestinationID" = "origdest"."Id" AND "tp12"."RPOrigDestinationID" IS NOT NULL
		LEFT JOIN (
			SELECT
				"res"."Id"
			FROM
				"WmsLoadCarrierDTO" "res"
			UNION
			SELECT
				"t2"."Id"
			FROM
				"WMS_ResourceA" "t2"
		) "res_1" ON "tp12"."ResourceID" = "res_1"."Id"
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
		) "outfeed" ON "tp12"."OutfeedTransportOrderID" = "outfeed"."Id" AND "tp12"."OutfeedTransportOrderID" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_ResourceA"';
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

