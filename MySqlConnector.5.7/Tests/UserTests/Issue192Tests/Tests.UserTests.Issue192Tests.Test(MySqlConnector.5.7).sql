-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO `TypeConvertTable`
(
	`Id`,
	`Name`,
	`BoolValue`,
	`GuidValue`
)
VALUES
(
	@Id,
	@Name,
	@BoolValue,
	@GuidValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue String -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO `TypeConvertTable`
(
	`Id`,
	`Name`,
	`BoolValue`,
	`GuidValue`
)
VALUES
(
	@Id,
	@Name,
	@BoolValue,
	@GuidValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @cond VarChar(36) -- AnsiString
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @cond

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'N'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`BoolValue` = 'Y'
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @GuidValue
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	`t1`.`Id`,
	`t1`.`Name`,
	`t1`.`BoolValue`,
	`t1`.`GuidValue`
FROM
	`TypeConvertTable` `t1`
WHERE
	`t1`.`GuidValue` = @GuidValue
LIMIT 1

