BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdTrun"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIdTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIdTrun"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM "TestIdTrun"

BeforeExecute
-- Firebird.3 Firebird3

SET GENERATOR "GIDENTITY_TestIdTrun" TO 0

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdTrun"';
	EXECUTE STATEMENT 'DROP TABLE "TestIdTrun"';
END

