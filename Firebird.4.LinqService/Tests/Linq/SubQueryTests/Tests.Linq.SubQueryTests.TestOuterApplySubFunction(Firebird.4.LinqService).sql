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
				"t1"."AppSubTypeId",
				"t1"."Description",
				"t1".MAX_1 as "MaxSubtypeCreatedDate",
				"t1".MAX_2 as "MaxTypeCreatedDate",
				"t1".MAX_3 as "MaxTypeId",
				"t1"."CountExt" as "CountDistinctTypeId",
				"t1"."CountExt_1" as "CountDistinctSubTypeId"
			FROM
				(
					SELECT
						COUNT(DISTINCT "type_1"."AppTypeId") as "CountExt",
						MAX("subtype_1"."CreatedDate") as MAX_1,
						MAX("type_1"."CreatedDate") as MAX_2,
						MAX("type_1"."AppTypeId") as MAX_3,
						"subtype_1"."AppSubTypeId",
						"subtype_1"."Description",
						COUNT(DISTINCT "subtype_1"."AppSubTypeId") as "CountExt_1"
					FROM
						"ItemAppType" "grpby"
							LEFT JOIN "AppType" "type_1" ON "type_1"."AppTypeId" = "grpby"."AppTypeId"
							LEFT JOIN "AppSubType" "subtype_1" ON "subtype_1"."AppTypeId" = "type_1"."AppTypeId"
					WHERE
						"grpby"."ItemId" = "i"."ItemId" AND "type_1"."AppTypeId" = "grpby"."AppTypeId" AND
						("subtype_1"."AppTypeId" = "type_1"."AppTypeId" OR "subtype_1"."AppTypeId" IS NULL AND "type_1"."AppTypeId" IS NULL)
					GROUP BY
						"subtype_1"."Description",
						"subtype_1"."AppSubTypeId"
				) "t1"
			ORDER BY
				"t1"."CountExt" DESC,
				"t1".MAX_1 DESC,
				"t1".MAX_2 DESC,
				"t1".MAX_3 DESC
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

