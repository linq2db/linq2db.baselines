BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

BeforeExecute
-- Firebird.5 Firebird4

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

BeforeExecute
-- Firebird.5 Firebird4

DROP TABLE "DropTableTest"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

