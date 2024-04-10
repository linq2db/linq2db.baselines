BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("_".ID)
FROM
	ALLTYPES "_"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = '	'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
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
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ''

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = ' '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char(1) -- StringFixedLength
SET     @NChar = '　'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NChar Char -- StringFixedLength
SET     @NChar = NULL

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	CAST(@NChar AS NChar(1))
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

