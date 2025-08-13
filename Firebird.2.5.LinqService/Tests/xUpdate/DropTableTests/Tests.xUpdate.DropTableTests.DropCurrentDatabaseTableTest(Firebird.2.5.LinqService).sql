BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

BeforeExecute
-- Firebird.2.5 Firebird

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

DROP TABLE "DropTableTest"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

