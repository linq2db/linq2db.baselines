BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ItemAppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ItemAppType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppSubType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppSubType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @groupId Integer -- Int32
SET     @groupId = 5

SELECT
	"i"."ItemId",
	"i"."Description",
	(
		SELECT FIRST 1
			"t1"."CountExt"
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_1"."AppTypeId") as "CountExt",
					MAX("subtype_1"."CreatedDate") as MAX_1,
					MAX("type_1"."CreatedDate") as MAX_2,
					MAX("type_1"."AppTypeId") as MAX_3
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
	),
	(
		SELECT FIRST 1
			"t2"."AppSubTypeId"
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_2"."AppTypeId") as "CountExt",
					MAX("subtype_2"."CreatedDate") as MAX_1,
					MAX("type_2"."CreatedDate") as MAX_2,
					MAX("type_2"."AppTypeId") as MAX_3,
					"subtype_2"."AppSubTypeId"
				FROM
					"ItemAppType" "grpby_1"
						LEFT JOIN "AppType" "type_2" ON "type_2"."AppTypeId" = "grpby_1"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_2" ON "subtype_2"."AppTypeId" = "type_2"."AppTypeId"
				WHERE
					"grpby_1"."ItemId" = "i"."ItemId" AND "type_2"."AppTypeId" = "grpby_1"."AppTypeId" AND
					("subtype_2"."AppTypeId" = "type_2"."AppTypeId" OR "subtype_2"."AppTypeId" IS NULL AND "type_2"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_2"."Description",
					"subtype_2"."AppSubTypeId"
			) "t2"
		ORDER BY
			"t2"."CountExt" DESC,
			"t2".MAX_1 DESC,
			"t2".MAX_2 DESC,
			"t2".MAX_3 DESC
	),
	(
		SELECT FIRST 1
			"t3"."Description"
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_3"."AppTypeId") as "CountExt",
					MAX("subtype_3"."CreatedDate") as MAX_1,
					MAX("type_3"."CreatedDate") as MAX_2,
					MAX("type_3"."AppTypeId") as MAX_3,
					"subtype_3"."Description"
				FROM
					"ItemAppType" "grpby_2"
						LEFT JOIN "AppType" "type_3" ON "type_3"."AppTypeId" = "grpby_2"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_3" ON "subtype_3"."AppTypeId" = "type_3"."AppTypeId"
				WHERE
					"grpby_2"."ItemId" = "i"."ItemId" AND "type_3"."AppTypeId" = "grpby_2"."AppTypeId" AND
					("subtype_3"."AppTypeId" = "type_3"."AppTypeId" OR "subtype_3"."AppTypeId" IS NULL AND "type_3"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_3"."Description",
					"subtype_3"."AppSubTypeId"
			) "t3"
		ORDER BY
			"t3"."CountExt" DESC,
			"t3".MAX_1 DESC,
			"t3".MAX_2 DESC,
			"t3".MAX_3 DESC
	),
	(
		SELECT FIRST 1
			"t4".MAX_1
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_4"."AppTypeId") as "CountExt",
					MAX("subtype_4"."CreatedDate") as MAX_1,
					MAX("type_4"."CreatedDate") as MAX_2,
					MAX("type_4"."AppTypeId") as MAX_3
				FROM
					"ItemAppType" "grpby_3"
						LEFT JOIN "AppType" "type_4" ON "type_4"."AppTypeId" = "grpby_3"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_4" ON "subtype_4"."AppTypeId" = "type_4"."AppTypeId"
				WHERE
					"grpby_3"."ItemId" = "i"."ItemId" AND "type_4"."AppTypeId" = "grpby_3"."AppTypeId" AND
					("subtype_4"."AppTypeId" = "type_4"."AppTypeId" OR "subtype_4"."AppTypeId" IS NULL AND "type_4"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_4"."Description",
					"subtype_4"."AppSubTypeId"
			) "t4"
		ORDER BY
			"t4"."CountExt" DESC,
			"t4".MAX_1 DESC,
			"t4".MAX_2 DESC,
			"t4".MAX_3 DESC
	),
	(
		SELECT FIRST 1
			"t5".MAX_2
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_5"."AppTypeId") as "CountExt",
					MAX("subtype_5"."CreatedDate") as MAX_1,
					MAX("type_5"."CreatedDate") as MAX_2,
					MAX("type_5"."AppTypeId") as MAX_3
				FROM
					"ItemAppType" "grpby_4"
						LEFT JOIN "AppType" "type_5" ON "type_5"."AppTypeId" = "grpby_4"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_5" ON "subtype_5"."AppTypeId" = "type_5"."AppTypeId"
				WHERE
					"grpby_4"."ItemId" = "i"."ItemId" AND "type_5"."AppTypeId" = "grpby_4"."AppTypeId" AND
					("subtype_5"."AppTypeId" = "type_5"."AppTypeId" OR "subtype_5"."AppTypeId" IS NULL AND "type_5"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_5"."Description",
					"subtype_5"."AppSubTypeId"
			) "t5"
		ORDER BY
			"t5"."CountExt" DESC,
			"t5".MAX_1 DESC,
			"t5".MAX_2 DESC,
			"t5".MAX_3 DESC
	),
	(
		SELECT FIRST 1
			"t6".MAX_3
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_6"."AppTypeId") as "CountExt",
					MAX("subtype_6"."CreatedDate") as MAX_1,
					MAX("type_6"."CreatedDate") as MAX_2,
					MAX("type_6"."AppTypeId") as MAX_3
				FROM
					"ItemAppType" "grpby_5"
						LEFT JOIN "AppType" "type_6" ON "type_6"."AppTypeId" = "grpby_5"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_6" ON "subtype_6"."AppTypeId" = "type_6"."AppTypeId"
				WHERE
					"grpby_5"."ItemId" = "i"."ItemId" AND "type_6"."AppTypeId" = "grpby_5"."AppTypeId" AND
					("subtype_6"."AppTypeId" = "type_6"."AppTypeId" OR "subtype_6"."AppTypeId" IS NULL AND "type_6"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_6"."Description",
					"subtype_6"."AppSubTypeId"
			) "t6"
		ORDER BY
			"t6"."CountExt" DESC,
			"t6".MAX_1 DESC,
			"t6".MAX_2 DESC,
			"t6".MAX_3 DESC
	),
	(
		SELECT FIRST 1
			"t7"."CountExt_1"
		FROM
			(
				SELECT
					COUNT(DISTINCT "type_7"."AppTypeId") as "CountExt",
					MAX("subtype_7"."CreatedDate") as MAX_1,
					MAX("type_7"."CreatedDate") as MAX_2,
					MAX("type_7"."AppTypeId") as MAX_3,
					COUNT(DISTINCT "subtype_7"."AppSubTypeId") as "CountExt_1"
				FROM
					"ItemAppType" "grpby_6"
						LEFT JOIN "AppType" "type_7" ON "type_7"."AppTypeId" = "grpby_6"."AppTypeId"
						LEFT JOIN "AppSubType" "subtype_7" ON "subtype_7"."AppTypeId" = "type_7"."AppTypeId"
				WHERE
					"grpby_6"."ItemId" = "i"."ItemId" AND "type_7"."AppTypeId" = "grpby_6"."AppTypeId" AND
					("subtype_7"."AppTypeId" = "type_7"."AppTypeId" OR "subtype_7"."AppTypeId" IS NULL AND "type_7"."AppTypeId" IS NULL)
				GROUP BY
					"subtype_7"."Description",
					"subtype_7"."AppSubTypeId"
			) "t7"
		ORDER BY
			"t7"."CountExt" DESC,
			"t7".MAX_1 DESC,
			"t7".MAX_2 DESC,
			"t7".MAX_3 DESC
	)
FROM
	"Item" "i"
WHERE
	"i"."GroupId" = @groupId

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppSubType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppSubType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AppType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ItemAppType')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ItemAppType"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Item"';
END

