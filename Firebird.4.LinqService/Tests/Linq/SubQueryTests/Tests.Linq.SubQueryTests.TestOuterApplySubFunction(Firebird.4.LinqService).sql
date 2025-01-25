BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Item"
			(
				"GroupId"     Int                                    NOT NULL,
				"ItemId"      Int                                    NOT NULL,
				"Description" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ItemAppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ItemAppType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ItemAppType')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ItemAppType"
			(
				"AppTypeId" Int NOT NULL,
				"ItemId"    Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppType')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AppType"
			(
				"AppTypeId"   Int       NOT NULL,
				"CreatedDate" TimeStamp NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppSubType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppSubType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppSubType')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AppSubType"
			(
				"AppTypeId"    Int                                    NOT NULL,
				"AppSubTypeId" Int                                    NOT NULL,
				"Description"  VarChar(255) CHARACTER SET UNICODE_FSS,
				"CreatedDate"  TimeStamp                              NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @groupId Integer -- Int32
SET     @groupId = 5

SELECT
	"i"."ItemId",
	"i"."Description",
	"t2"."CountDistinctTypeId",
	"t2"."AppSubTypeId",
	"t2"."Description",
	"t2"."MaxSubtypeCreatedDate",
	"t2"."MaxTypeCreatedDate",
	"t2"."MaxTypeId",
	"t2"."CountDistinctSubTypeId"
FROM
	"Item" "i"
		LEFT JOIN LATERAL (
			SELECT
				"subtype_1"."AppSubTypeId",
				"subtype_1"."Description",
				MAX("subtype_1"."CreatedDate") as "MaxSubtypeCreatedDate",
				MAX("type_1"."CreatedDate") as "MaxTypeCreatedDate",
				MAX("type_1"."AppTypeId") as "MaxTypeId",
				COUNT(DISTINCT "type_1"."AppTypeId") as "CountDistinctTypeId",
				COUNT(DISTINCT "subtype_1"."AppSubTypeId") as "CountDistinctSubTypeId"
			FROM
				"ItemAppType" "t1"
					LEFT JOIN "AppType" "type_1" ON "type_1"."AppTypeId" = "t1"."AppTypeId"
					LEFT JOIN "AppSubType" "subtype_1" ON "subtype_1"."AppTypeId" = "type_1"."AppTypeId"
			WHERE
				"t1"."ItemId" = "i"."ItemId" AND "type_1"."AppTypeId" = "t1"."AppTypeId" AND
				("subtype_1"."AppTypeId" = "type_1"."AppTypeId" OR "subtype_1"."AppTypeId" IS NULL AND "type_1"."AppTypeId" IS NULL)
			GROUP BY
				"subtype_1"."Description",
				"subtype_1"."AppSubTypeId"
			ORDER BY
				COUNT(DISTINCT "type_1"."AppTypeId") DESC,
				MAX("subtype_1"."CreatedDate") DESC,
				MAX("type_1"."CreatedDate") DESC,
				MAX("type_1"."AppTypeId") DESC
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1
WHERE
	"i"."GroupId" = @groupId

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppSubType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppSubType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ItemAppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ItemAppType"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

