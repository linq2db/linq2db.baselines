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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WmsResourcePointDTO"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "StorageShelfDTO"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OutfeedTransportOrderDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "OutfeedTransportOrderDTO"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_OutfeedTransportOrderA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_OutfeedTransportOrderA"
			(
				"Id" BINARY(16) NOT NULL
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_ResourceA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WMS_ResourceA"
			(
				"Id" BINARY(16) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_ResourceA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_ResourceA"';
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
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_OutfeedTransportOrderA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_OutfeedTransportOrderA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'OutfeedTransportOrderDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "OutfeedTransportOrderDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
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

