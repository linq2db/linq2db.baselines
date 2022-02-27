BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Stone`
(
	`Id`           INT          AUTO_INCREMENT NOT NULL,
	`Name`         VARCHAR(255)                NOT NULL,
	`Enabled`      BOOLEAN                         NULL,
	`ImageFullUrl` VARCHAR(255)                    NULL,

	CONSTRAINT `PK_Stone` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`s`.`Name`
FROM
	`Stone` `s`
WHERE
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND
	`s`.`Name` NOT LIKE 'level - %' AND Char_Length(`s`.`ImageFullUrl`) > 0
GROUP BY
	`s`.`Name`

BeforeExecute
-- MySqlConnector MySql
DECLARE @Name_1 VarChar(6) -- String
SET     @Name_1 = 'group1'

SELECT
	`s`.`Id`,
	`s`.`Name`,
	`s`.`Enabled`,
	`s`.`ImageFullUrl`
FROM
	`Stone` `s`
WHERE
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND
	`s`.`Name` NOT LIKE 'level - %' AND
	Char_Length(`s`.`ImageFullUrl`) > 0 AND
	`s`.`Name` = @Name_1

BeforeExecute
-- MySqlConnector MySql
DECLARE @Name_1 VarChar(6) -- String
SET     @Name_1 = 'group2'

SELECT
	`s`.`Id`,
	`s`.`Name`,
	`s`.`Enabled`,
	`s`.`ImageFullUrl`
FROM
	`Stone` `s`
WHERE
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND
	`s`.`Name` NOT LIKE 'level - %' AND
	Char_Length(`s`.`ImageFullUrl`) > 0 AND
	`s`.`Name` = @Name_1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Stone`

