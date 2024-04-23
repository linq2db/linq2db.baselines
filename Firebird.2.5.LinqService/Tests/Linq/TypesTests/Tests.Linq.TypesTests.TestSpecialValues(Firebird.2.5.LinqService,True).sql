BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	MAX("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1000,
	CAST(LOG(1, 1) AS FLOAT),
	LOG(1, 1)
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1001,
	CAST(LOG(1, 1) AS FLOAT),
	LOG(1, 0.5)
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1002,
	CAST(LOG(1, 1) AS FLOAT),
	LOG(1, 2)
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."floatDataType",
	"t1"."doubleDataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > 2
ORDER BY
	"t1".ID

