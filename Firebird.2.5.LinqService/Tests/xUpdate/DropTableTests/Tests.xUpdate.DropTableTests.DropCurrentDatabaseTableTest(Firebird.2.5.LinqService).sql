BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DropTableTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DropTableTest"';
END

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DROP TABLE "DropTableTest"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

