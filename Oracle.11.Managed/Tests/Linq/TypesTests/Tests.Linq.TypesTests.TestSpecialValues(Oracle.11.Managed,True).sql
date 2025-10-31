-- Oracle.11.Managed Oracle11

SELECT
	MAX(t1.ID)
FROM
	"AllTypes" t1

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

SELECT
	t1."realDataType",
	t1."floatDataType"
FROM
	"AllTypes" t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

