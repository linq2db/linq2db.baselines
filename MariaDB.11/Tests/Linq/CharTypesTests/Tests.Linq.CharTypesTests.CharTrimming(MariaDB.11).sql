﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	MAX(`t1`.`ID`)
FROM
	`AllTypes` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 2

SELECT
	`t1`.`ID`,
	`t1`.`char20DataType`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`ID` > @lastId
ORDER BY
	`t1`.`ID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @lastId Int32
SET     @lastId = 2

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` > @lastId

