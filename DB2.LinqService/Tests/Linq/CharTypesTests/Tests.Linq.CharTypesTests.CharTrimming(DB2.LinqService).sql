BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	MAX("t1".ID)
FROM
	ALLTYPES "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

DELETE FROM
	ALLTYPES "t1"
WHERE
	"t1".ID > @lastId

