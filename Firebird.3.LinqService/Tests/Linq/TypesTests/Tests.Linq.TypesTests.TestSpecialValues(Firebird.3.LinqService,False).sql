﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Max("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @real Float -- Single
SET     @real = CAST(LOG(1, 1) AS FLOAT)
DECLARE @dbl Double
SET     @dbl = LOG(1, 1)

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1000,
	@real,
	@dbl
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @real Float -- Single
SET     @real = CAST(LOG(1, 0.5) AS FLOAT)
DECLARE @dbl Double
SET     @dbl = LOG(1, 0.5)

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1001,
	@real,
	@dbl
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @real Float -- Single
SET     @real = CAST(LOG(1, 2) AS FLOAT)
DECLARE @dbl Double
SET     @dbl = LOG(1, 2)

INSERT INTO "AllTypes"
(
	ID,
	"floatDataType",
	"doubleDataType"
)
VALUES
(
	1002,
	@real,
	@dbl
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @maxID Integer -- Int32
SET     @maxID = 2

SELECT
	"t1"."floatDataType",
	"t1"."doubleDataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @maxID
ORDER BY
	"t1".ID

