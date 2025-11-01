-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("t1".ID)
FROM
	ALLTYPES "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = '	'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = '
'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = '　'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char -- StringFixedLength
SET     @NChar = NULL

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar
)

-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

SELECT
	"t1".ID,
	"t1".CHAR20DATATYPE
FROM
	ALLTYPES "t1"
WHERE
	"t1".ID > @lastId
ORDER BY
	"t1".ID

-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

DELETE FROM
	ALLTYPES "t1"
WHERE
	"t1".ID > @lastId

