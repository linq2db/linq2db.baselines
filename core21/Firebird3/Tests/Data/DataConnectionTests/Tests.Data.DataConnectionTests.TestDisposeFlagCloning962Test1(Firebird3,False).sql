BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Categories')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Categories"
			(
				"CategoryID"   Int                                     NOT NULL,
				"CategoryName" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"Description"  VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Categories" PRIMARY KEY ("CategoryID")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Categories')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Categories"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Categories')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Categories" FOR "Categories"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."CategoryID" = GEN_ID("GIDENTITY_Categories", 1);
			END
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Categories"
(
	"CategoryName",
	"Description"
)
SELECT 'Name 1','Desc 1' FROM rdb$database UNION ALL
SELECT 'Name 2','Desc 2' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Products')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Products"
			(
				"ProductID"       Int                                     NOT NULL,
				"ProductName"     VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,
				"CategoryID"      Int,
				"QuantityPerUnit" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Products" PRIMARY KEY ("ProductID")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Products')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Products"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Products')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Products" FOR "Products"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."ProductID" = GEN_ID("GIDENTITY_Products", 1);
			END
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Products"
(
	"ProductName",
	"CategoryID",
	"QuantityPerUnit"
)
SELECT 'Prod 1',1,'q 1' FROM rdb$database UNION ALL
SELECT 'Prod 2',1,'q 2' FROM rdb$database UNION ALL
SELECT 'Prod 3',3,'q 3' FROM rdb$database UNION ALL
SELECT 'Prod 4',3,'q 4' FROM rdb$database UNION ALL
SELECT 'Prod 5',1,'q 5' FROM rdb$database UNION ALL
SELECT 'Prod 6',1,'q 6' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT
	"lw_Category"."CategoryID",
	"detail"."ProductID",
	"detail"."ProductName",
	"detail"."CategoryID",
	"detail"."QuantityPerUnit"
FROM
	"Categories" "lw_Category"
		INNER JOIN "Products" "detail" ON "lw_Category"."CategoryID" = "detail"."CategoryID"

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."CategoryID",
	"t1"."CategoryName",
	"t1"."Description"
FROM
	"Categories" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Products')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Products"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Categories"';
END

