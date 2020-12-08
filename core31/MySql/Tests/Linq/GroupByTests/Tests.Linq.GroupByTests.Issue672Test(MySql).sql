BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Stone`
(
	`Id`           INT          AUTO_INCREMENT NOT NULL,
	`Name`         VARCHAR(255)                NOT NULL,
	`Enabled`      BOOLEAN                         NULL,
	`ImageFullUrl` VARCHAR(255)                    NULL,

	CONSTRAINT `PK_Stone` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled UByte -- Boolean
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
-- MySql MySql.Official MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled UByte -- Boolean
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
-- MySql MySql.Official MySql
DECLARE @Name VarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled UByte -- Boolean
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
-- MySql MySql.Official MySql

SELECT
	`s`.`Name`
FROM
	`Stone` `s`
WHERE
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND `s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND Char_Length(`s`.`ImageFullUrl`) > 0
GROUP BY
	`s`.`Name`

BeforeExecute
-- MySql MySql.Official MySql
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
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND `s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND Char_Length(`s`.`ImageFullUrl`) > 0 AND `s`.`Name` = @Name

BeforeExecute
-- MySql MySql.Official MySql
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
	(`s`.`Enabled` = 1 AND `s`.`Enabled` IS NOT NULL) AND `s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND Char_Length(`s`.`ImageFullUrl`) > 0 AND `s`.`Name` = @Name

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `Stone`

