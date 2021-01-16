BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "ValueItem"
(
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "ValueItem"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"row_1"."Value"
FROM
	"ValueItem" "row_1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "ValueItem"

