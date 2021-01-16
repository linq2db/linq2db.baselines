BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(6) -- String
SET     @NString = 'test01'

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test02  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test03	 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test04
 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test05 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test06 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test07 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test08  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test09  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test10  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test11  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test12  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test13  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test14  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test15  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test16  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test17  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test18  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test19  '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test20　 '

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @NString VarChar -- String
SET     @NString = NULL

INSERT INTO ALLTYPES
(
	CHAR20DATATYPE
)
VALUES
(
	@NString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 223006

DELETE FROM
	ALLTYPES "_"
WHERE
	"_".ID > @lastId

