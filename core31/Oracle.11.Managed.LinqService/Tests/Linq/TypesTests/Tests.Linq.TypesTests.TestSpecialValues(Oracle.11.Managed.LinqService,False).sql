﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Max(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @real_1 BinaryFloat -- Single
SET     @real_1 = BINARY_FLOAT_NAN
DECLARE @dbl BinaryDouble -- Double
SET     @dbl = BINARY_DOUBLE_NAN

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1000,
	:real_1,
	:dbl
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @real_1 BinaryFloat -- Single
SET     @real_1 = -BINARY_FLOAT_INFINITY
DECLARE @dbl BinaryDouble -- Double
SET     @dbl = -BINARY_DOUBLE_INFINITY

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1001,
	:real_1,
	:dbl
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @real_1 BinaryFloat -- Single
SET     @real_1 = BINARY_FLOAT_INFINITY
DECLARE @dbl BinaryDouble -- Double
SET     @dbl = BINARY_DOUBLE_INFINITY

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1002,
	:real_1,
	:dbl
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @maxID Int32
SET     @maxID = 2

SELECT
	t1."realDataType",
	t1."floatDataType"
FROM
	"AllTypes" t1
WHERE
	t1.ID > :maxID
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @maxID Int32
SET     @maxID = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID > :maxID

