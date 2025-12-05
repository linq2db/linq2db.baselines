-- Firebird.3 Firebird3

SELECT
	MAX("t1".ID)
FROM
	"AllTypes" "t1"

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = '	'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = '
'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = _utf8 x'00'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Char Char -- String
SET     @Char = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@Char
)

-- Firebird.3 Firebird3
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

SELECT
	"t1".ID,
	"t1"."char20DataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId
ORDER BY
	"t1".ID

-- Firebird.3 Firebird3
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId

