BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DropTableTestID')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DropTableTestID"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DropTableTestID')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DropTableTestID"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTestID')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTestID"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "DropTableTestID"
		(
			ID  Int  NOT NULL,
			ID1 Int  NOT NULL,

			CONSTRAINT "PK_DropTableTestID" PRIMARY KEY (ID)
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_DropTableTestID"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_DropTableTestID" FOR "DropTableTestID"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW.ID = GEN_ID("GIDENTITY_DropTableTestID", 1);
		END
	';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "DropTableTestID"
(
	ID1
)
VALUES
(
	2
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t".ID,
	"t".ID1
FROM
	"DropTableTestID" "t"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DropTableTestID"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DropTableTestID"';
	EXECUTE STATEMENT 'DROP TABLE "DropTableTestID"';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1".ID1
FROM
	"DropTableTestID" "t1"

