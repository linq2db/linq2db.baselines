BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = '	'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = '
'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = '　'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @NChar Char -- String
SET     @NChar = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	:NChar
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId

