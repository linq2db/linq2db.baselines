-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

-- Firebird.3 Firebird3

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

-- Firebird.3 Firebird3

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

-- Firebird.3 Firebird3

DROP TABLE "DropTableTest"

-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

