BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	MAX(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @real BinaryFloat -- Single
SET     @real = BINARY_FLOAT_NAN
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
	:real,
	:dbl
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @real BinaryFloat -- Single
SET     @real = -BINARY_FLOAT_INFINITY
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
	:real,
	:dbl
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @real BinaryFloat -- Single
SET     @real = BINARY_FLOAT_INFINITY
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
	:real,
	:dbl
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
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

