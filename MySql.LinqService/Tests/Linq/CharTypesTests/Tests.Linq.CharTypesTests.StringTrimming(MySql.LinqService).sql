﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Max(`_`.`ID`)
FROM
	`AllTypes` `_`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(6) -- String
SET     @NString = 'test01'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test02  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test03	 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test04
 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test05 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test06 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test07 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test08  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test09  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test10  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test11  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test12  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test13  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test14  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test15  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test16  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test17  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test18  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test19  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test20　 '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar(8) -- String
SET     @NString = 'test21  '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NString VarChar -- String
SET     @NString = NULL

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NString
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 2

SELECT
	`_`.`ID`,
	`_`.`char20DataType`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` > @lastId
ORDER BY
	`_`.`ID`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 2

DELETE   `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` > @lastId

