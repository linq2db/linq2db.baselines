BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "T1351Model"
(
	ID             Int      NOT NULL,
	"TestField"    SmallInt NOT NULL,
	"TestNullable" SmallInt
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	"t1"."TestField" = 0

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1".ID,
	"t1"."TestField",
	"t1"."TestNullable"
FROM
	"T1351Model" "t1"
WHERE
	("t1"."TestNullable" <> 1 OR "t1"."TestNullable" IS NULL)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "T1351Model"

