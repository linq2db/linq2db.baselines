BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = '	'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = '
'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = '　'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @NChar_1 Text -- StringFixedLength
SET     @NChar_1 = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar_1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId

