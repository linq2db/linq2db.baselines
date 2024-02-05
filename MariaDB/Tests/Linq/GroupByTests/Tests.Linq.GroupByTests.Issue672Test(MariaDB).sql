BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Stone`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Stone`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`Name`         VARCHAR(4000)                NOT NULL,
	`Enabled`      BOOLEAN                          NULL,
	`ImageFullUrl` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Stone` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Bool -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl VarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO `Stone`
(
	`Name`,
	`Enabled`,
	`ImageFullUrl`
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`s`.`Name`
FROM
	`Stone` `s`
WHERE
	`s`.`Enabled` = 1 AND
	`s`.`Enabled` IS NOT NULL AND
	`s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
	Char_Length(`s`.`ImageFullUrl`) > 0
GROUP BY
	`s`.`Name`

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'

SELECT
	`s`.`Id`,
	`s`.`Name`,
	`s`.`Enabled`,
	`s`.`ImageFullUrl`
FROM
	`Stone` `s`
WHERE
	`s`.`Enabled` = 1 AND
	`s`.`Enabled` IS NOT NULL AND
	`s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
	Char_Length(`s`.`ImageFullUrl`) > 0 AND
	`s`.`Name` = @Name

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'

SELECT
	`s`.`Id`,
	`s`.`Name`,
	`s`.`Enabled`,
	`s`.`ImageFullUrl`
FROM
	`Stone` `s`
WHERE
	`s`.`Enabled` = 1 AND
	`s`.`Enabled` IS NOT NULL AND
	`s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
	Char_Length(`s`.`ImageFullUrl`) > 0 AND
	`s`.`Name` = @Name

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Stone`

