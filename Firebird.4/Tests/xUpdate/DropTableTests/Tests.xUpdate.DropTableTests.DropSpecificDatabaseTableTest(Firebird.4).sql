-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

-- Firebird.4 Firebird4

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

-- Firebird.4 Firebird4

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

-- Firebird.4 Firebird4

DROP TABLE "DropTableTest"

-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

