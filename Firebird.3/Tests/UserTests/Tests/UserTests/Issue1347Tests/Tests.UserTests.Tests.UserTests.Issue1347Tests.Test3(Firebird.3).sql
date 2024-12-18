BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"t2"."Id",
	"t2"."ResourceID",
	"t2"."StorageShelfSourceID",
	"t2"."RPSourceID",
	"t2"."StorageShelfDestinationID",
	"t2"."RPDestinationID",
	"t2"."RPOrigDestinationID",
	"t2"."OutfeedTransportOrderID",
	"source"."Id",
	"sourceShelf"."Id",
	"dest"."Id",
	"destShelf"."Id",
	"origdest"."Id"
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
	) "t2"
		LEFT JOIN "WmsResourcePointDTO" "source" ON "t2"."RPSourceID" = "source"."Id" AND "t2"."RPSourceID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "sourceShelf" ON "t2"."StorageShelfSourceID" = "sourceShelf"."Id" AND "t2"."StorageShelfSourceID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "dest" ON "t2"."RPDestinationID" = "dest"."Id" AND "t2"."RPDestinationID" IS NOT NULL
		LEFT JOIN "StorageShelfDTO" "destShelf" ON "t2"."StorageShelfDestinationID" = "destShelf"."Id" AND "t2"."StorageShelfDestinationID" IS NOT NULL
		LEFT JOIN "WmsResourcePointDTO" "origdest" ON "t2"."RPOrigDestinationID" = "origdest"."Id" AND "t2"."RPOrigDestinationID" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'StorageShelfDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "StorageShelfDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WmsResourcePointDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WmsResourcePointDTO"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WMS_GlobalTaskA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WMS_GlobalTaskA"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GlobalTaskDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GlobalTaskDTO"';
END

