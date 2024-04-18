﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_test_temp"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_test_temp"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_temp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_temp"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_temp')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_temp"
			(
				ID       Int      NOT NULL,
				"Field1" Decimal  NOT NULL,

				CONSTRAINT "PK_test_temp" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_test_temp"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_test_temp" FOR "test_temp"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_test_temp", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
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
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM "test_temp"

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "test_temp"
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
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_test_temp"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_test_temp')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_test_temp"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_temp')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_temp"';
END

