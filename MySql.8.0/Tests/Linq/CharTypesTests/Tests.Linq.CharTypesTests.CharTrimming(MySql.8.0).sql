﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MAX(`t1`.`ID`)
FROM
	`AllTypes` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @lastId Int32
SET     @lastId = 2

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`ID` > @lastId

