﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	Max(`_`.`ID`)
FROM
	`AllTypes` `_`

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = '	'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = '
'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = '　'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @NChar String -- StringFixedLength
SET     @NChar = NULL

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 2

DELETE   `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` > @lastId

