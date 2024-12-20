BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InheritanceFilter')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InheritanceFilter"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InheritanceFilter')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InheritanceFilter"
			(
				"Id"                Int NOT NULL,
				"Code"              Int NOT NULL,
				"Child1Field"       Int,
				"Child2Field"       Int,
				"Grandchild11Field" Int,
				"Grandchild12Field" Int,
				"Grandchild21Field" Int,
				"Grandchild22Field" Int,

				CONSTRAINT "PK_InheritanceFilter" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "InheritanceFilter"
(
	"Id",
	"Code",
	"Child1Field",
	"Child2Field",
	"Grandchild11Field",
	"Grandchild12Field",
	"Grandchild21Field",
	"Grandchild22Field"
)
SELECT 1,1,11,0,0,0,0,0 FROM rdb$database UNION ALL
SELECT 2,2,0,12,0,0,0,0 FROM rdb$database UNION ALL
SELECT 3,11,23,0,13,0,0,0 FROM rdb$database UNION ALL
SELECT 4,12,24,0,0,14,0,0 FROM rdb$database UNION ALL
SELECT 5,21,0,25,0,0,15,0 FROM rdb$database UNION ALL
SELECT 6,22,0,26,0,0,0,16 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Child1Field",
	"t1"."Grandchild12Field",
	"t1"."Grandchild11Field"
FROM
	"InheritanceFilter" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InheritanceFilter')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InheritanceFilter"';
END

