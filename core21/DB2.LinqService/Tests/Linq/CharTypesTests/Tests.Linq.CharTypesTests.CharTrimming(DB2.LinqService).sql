BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Max("_".ID)
FROM
	ALLTYPES "_"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = '	'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = '
'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char(1) -- StringFixedLength
SET     @NChar_1 = '　'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar_1 Char -- StringFixedLength
SET     @NChar_1 = NULL

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

SELECT 
	"_".ID, 
	"_".CHAR20DATATYPE
FROM
	ALLTYPES "_"
WHERE
	"_".ID > @lastId
ORDER BY
	"_".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

DELETE FROM
	ALLTYPES "_"
WHERE
	"_".ID > @lastId

