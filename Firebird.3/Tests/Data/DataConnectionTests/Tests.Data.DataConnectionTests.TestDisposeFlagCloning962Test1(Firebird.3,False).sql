BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Categories"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "Categories"
(
	"CategoryName",
	"Description"
)
SELECT CAST('Name 1' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Desc 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'Name 2','Desc 2' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Products')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Products"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "Products"
(
	"ProductName",
	"CategoryID",
	"QuantityPerUnit"
)
SELECT CAST('Prod 1' AS VarChar(255) CHARACTER SET UNICODE_FSS),1,CAST('q 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 'Prod 2',1,'q 2' FROM rdb$database UNION ALL
SELECT 'Prod 3',3,'q 3' FROM rdb$database UNION ALL
SELECT 'Prod 4',3,'q 4' FROM rdb$database UNION ALL
SELECT 'Prod 5',1,'q 5' FROM rdb$database UNION ALL
SELECT 'Prod 6',1,'q 6' FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."CategoryID",
	"d"."ProductID",
	"d"."ProductName",
	"d"."CategoryID",
	"d"."QuantityPerUnit"
FROM
	"Categories" "m_1"
		INNER JOIN "Products" "d" ON "m_1"."CategoryID" = "d"."CategoryID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."CategoryID",
	"t1"."CategoryName",
	"t1"."Description"
FROM
	"Categories" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Products')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Products"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Products')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Products"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Categories')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Categories"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Categories')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Categories"';
END

