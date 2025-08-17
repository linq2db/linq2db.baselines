BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(6) -- String
SET     @NString = 'test01'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test02  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test03	 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test04
 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test05 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test06 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test07 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test08  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test09  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test10  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test11  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test12  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test13  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test14  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test15  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test16  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test17  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test18  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test19  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text(8) -- String
SET     @NString = 'test20　 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @NString Text -- String
SET     @NString = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NString
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

SELECT
	t1."ID",
	t1."char20DataType"
FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId

