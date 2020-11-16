BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TypeConvertTable`
(
	`Name`      VARCHAR(50) NOT NULL,
	`BoolValue` CHAR(255)   NOT NULL,
	`GuidValue` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = 'N'

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = 'Y'

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`GuidValue` = @GuidValue

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue_1 String -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue_1 String -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue_1 String -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue_1 String -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue_1 String -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue_1
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`BoolValue` = @BoolValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`GuidValue` = @GuidValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`Name`,
	`_`.`BoolValue`,
	`_`.`GuidValue`
FROM
	`TypeConvertTable` `_`
WHERE
	`_`.`GuidValue` = @GuidValue
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TypeConvertTable`

