BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'	',
	'	'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'
',
	'
'
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'',
	''
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'',
	''
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'',
	''
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	' ',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'　',
	' '
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	chr(0),
	chr(0)
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	NULL,
	NULL
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 2

SELECT
	t1.ID,
	t1."char20DataType",
	t1."ncharDataType"
FROM
	"AllTypes" t1
WHERE
	t1.ID > :lastId
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID > :lastId

