BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DROP TABLE "DropTableTest"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

