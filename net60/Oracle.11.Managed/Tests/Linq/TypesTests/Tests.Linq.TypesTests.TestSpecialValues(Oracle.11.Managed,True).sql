﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Max(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1000,
	BINARY_FLOAT_NAN,
	BINARY_DOUBLE_NAN
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1001,
	-BINARY_FLOAT_INFINITY,
	-BINARY_DOUBLE_INFINITY
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT INTO "AllTypes"
(
	ID,
	"realDataType",
	"floatDataType"
)
VALUES
(
	1002,
	BINARY_FLOAT_INFINITY,
	BINARY_DOUBLE_INFINITY
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."realDataType",
	t1."floatDataType"
FROM
	"AllTypes" t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID > 2

