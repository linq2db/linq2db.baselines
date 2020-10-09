BeforeExecute
-- Firebird

CREATE TABLE "ValueItem"
(
	"Value" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "ValueItem"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- Firebird

SELECT 
	"row_1"."Value"
FROM
	"ValueItem" "row_1"

BeforeExecute
-- Firebird

DROP TABLE "ValueItem"

