BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdTrun"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIdTrun"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "TestIdTrun"
		(
			ID       Int              NOT NULL,
			"Field1" Decimal(18, 10)  NOT NULL,

			CONSTRAINT "PK_TestIdTrun" PRIMARY KEY (ID)
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_TestIdTrun"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_TestIdTrun" FOR "TestIdTrun"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW.ID = GEN_ID("GIDENTITY_TestIdTrun", 1);
		END
	';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM "TestIdTrun"

BeforeExecute
-- Firebird.2.5 Firebird

SET GENERATOR "GIDENTITY_TestIdTrun" TO 0

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST 2 SKIP @skip
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdTrun"';
	EXECUTE STATEMENT 'DROP TABLE "TestIdTrun"';
END

