﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeConvertTable`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TypeConvertTable`
(
	`Name`      VARCHAR(50) NOT NULL,
	`BoolValue` CHAR(255)   NOT NULL,
	`GuidValue` VARCHAR(50)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `TypeConvertTable`
(
	`Name`,
	`BoolValue`,
	`GuidValue`
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO `TypeConvertTable`
(
	`Name`,
	`BoolValue`,
	`GuidValue`
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @GuidValue

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @GuidValue
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @GuidValue
LIMIT 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TypeConvertTable`

