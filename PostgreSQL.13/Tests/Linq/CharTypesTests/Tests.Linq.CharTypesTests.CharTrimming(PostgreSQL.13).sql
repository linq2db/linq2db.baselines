-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(t1."ID")
FROM
	"AllTypes" t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" > :lastId

