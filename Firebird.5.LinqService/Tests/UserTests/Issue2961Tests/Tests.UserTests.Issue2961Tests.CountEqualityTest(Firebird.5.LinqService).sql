BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Condos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Condos"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Condos')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Condos"
			(
				"Id"         Int NOT NULL,
				"LocationId" Int NOT NULL,

				CONSTRAINT "PK_Condos" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CategoryCondos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CategoryCondos"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CategoryCondos')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CategoryCondos"
			(
				"CategoryId" Int NOT NULL,
				"CondoId"    Int NOT NULL,

				CONSTRAINT "PK_CategoryCondos" PRIMARY KEY ("CategoryId", "CondoId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CondoTags')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CondoTags"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CondoTags')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CondoTags"
			(
				"CondoId" Int NOT NULL,
				"TagId"   Int NOT NULL,

				CONSTRAINT "PK_CondoTags" PRIMARY KEY ("CondoId", "TagId")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Locations"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Locations')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Locations"
			(
				"Id"           Int                                    NOT NULL,
				"LocationName" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Locations" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"c_1"."Id",
	"c_1"."LocationId",
	"subcc"."CountCondoCategories",
	"subct"."CountCondoTags",
	"l"."LocationName",
	"l"."Id"
FROM
	"Condos" "c_1"
		INNER JOIN "Locations" "l" ON "c_1"."LocationId" = "l"."Id"
		LEFT JOIN (
			SELECT
				"g2"."CondoId",
				COUNT(*) as "CountCondoTags"
			FROM
				"CondoTags" "g2"
			GROUP BY
				"g2"."CondoId"
		) "subct" ON "c_1"."Id" = "subct"."CondoId"
		LEFT JOIN (
			SELECT
				"g1"."CondoId",
				COUNT(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" "g1"
			GROUP BY
				"g1"."CondoId"
		) "subcc" ON "c_1"."Id" = "subcc"."CondoId"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Locations"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CondoTags')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CondoTags"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CategoryCondos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CategoryCondos"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Condos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Condos"';
END

