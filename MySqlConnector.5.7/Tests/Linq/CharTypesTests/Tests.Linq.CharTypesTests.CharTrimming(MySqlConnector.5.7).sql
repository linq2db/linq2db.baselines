﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	MAX(`t1`.`ID`)
FROM
	`AllTypes` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @lastId Int32
SET     @lastId = 2

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` > @lastId

