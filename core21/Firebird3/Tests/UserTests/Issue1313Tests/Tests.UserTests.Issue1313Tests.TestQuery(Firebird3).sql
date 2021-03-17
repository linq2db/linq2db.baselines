﻿BeforeExecute
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

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ValueItem')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ValueItem"';
END

