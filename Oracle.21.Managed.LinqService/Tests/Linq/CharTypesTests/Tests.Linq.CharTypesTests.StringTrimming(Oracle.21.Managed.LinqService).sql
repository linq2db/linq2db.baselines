BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Max(t1.ID)
FROM
	"AllTypes" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test01',
	'test01'
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test02  ',
	'test02  '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test03	 ',
	'test03	 '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test04
 ',
	'test04
 '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test05 ',
	'test05 '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test06 ',
	'test06 '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test07 ',
	'test07 '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test08  ',
	'test08  '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test09  ',
	'test09     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test10  ',
	'test10     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test11  ',
	'test11     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test12  ',
	'test12     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test13  ',
	'test13     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test14  ',
	'test14     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test15  ',
	'test15     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test16  ',
	'test16     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test17  ',
	'test17     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test18  ',
	'test18     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test19  ',
	'test19     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test20　 ',
	'test20     '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"ncharDataType",
	"char20DataType"
)
VALUES
(
	'test21' || chr(0) || ' ',
	'test21' || chr(0) || '   '
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @lastId Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID > :lastId

