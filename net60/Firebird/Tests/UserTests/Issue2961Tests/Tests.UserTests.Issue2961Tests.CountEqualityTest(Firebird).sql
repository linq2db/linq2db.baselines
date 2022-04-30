BeforeExecute
-- Firebird

CREATE TABLE "Condos"
(
	"Id"         Int NOT NULL,
	"LocationId" Int NOT NULL,

	CONSTRAINT "PK_Condos" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

CREATE TABLE "CategoryCondos"
(
	"CategoryId" Int NOT NULL,
	"CondoId"    Int NOT NULL,

	CONSTRAINT "PK_CategoryCondos" PRIMARY KEY ("CategoryId", "CondoId")
)

BeforeExecute
-- Firebird

CREATE TABLE "CondoTags"
(
	"CondoId" Int NOT NULL,
	"TagId"   Int NOT NULL,

	CONSTRAINT "PK_CondoTags" PRIMARY KEY ("CondoId", "TagId")
)

BeforeExecute
-- Firebird

CREATE TABLE "Locations"
(
	"Id"           Int                                    NOT NULL,
	"LocationName" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Locations" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id",
	"c_1"."LocationId",
	"ccleft"."CountCondoCategories",
	"ctleft"."CountCondoTags",
	"l"."LocationName",
	"l"."Id"
FROM
	"Condos" "c_1"
		INNER JOIN "Locations" "l" ON "c_1"."LocationId" = "l"."Id"
		LEFT JOIN (
			SELECT
				"t1"."CondoId",
				Count(*) as "CountCondoTags"
			FROM
				"CondoTags" "t1"
			GROUP BY
				"t1"."CondoId"
		) "ctleft" ON "c_1"."Id" = "ctleft"."CondoId"
		LEFT JOIN (
			SELECT
				"t2"."CondoId",
				Count(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" "t2"
			GROUP BY
				"t2"."CondoId"
		) "ccleft" ON "c_1"."Id" = "ccleft"."CondoId"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Locations')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Locations"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CondoTags')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CondoTags"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CategoryCondos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CategoryCondos"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Condos')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Condos"';
END

