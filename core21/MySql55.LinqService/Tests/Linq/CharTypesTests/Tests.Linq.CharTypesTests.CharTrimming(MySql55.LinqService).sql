﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Max(`_`.`ID`)
FROM
	`AllTypes` `_`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = '	'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = '
'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ''

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = '　'

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = ' '

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NChar_1 String -- StringFixedLength
SET     @NChar_1 = NULL

INSERT INTO `AllTypes`
(
	`char20DataType`
)
VALUES
(
	@NChar_1
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
DECLARE @lastId Int32
SET     @lastId = 2

DELETE `_`
FROM
	`AllTypes` `_`
WHERE
	`_`.`ID` > @lastId

