BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Stone`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Stone`
(
	`Id`           INT           AUTO_INCREMENT NOT NULL,
	`Name`         VARCHAR(4000)                NOT NULL,
	`Enabled`      BOOLEAN                          NULL,
	`ImageFullUrl` VARCHAR(4000)                    NULL,

	CONSTRAINT `PK_Stone` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Name`,
	`d`.`Id`,
	`d`.`Name`,
	`d`.`Enabled`,
	`d`.`ImageFullUrl`
FROM
	(
		SELECT DISTINCT
			`s`.`Name`
		FROM
			`Stone` `s`
		WHERE
			`s`.`Enabled` = 1 AND `s`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
			Char_Length(`s`.`ImageFullUrl`) > 0
	) `m_1`
		INNER JOIN `Stone` `d` ON `m_1`.`Name` = `d`.`Name`
WHERE
	`d`.`Enabled` = 1 AND `d`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
	Char_Length(`d`.`ImageFullUrl`) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`sG`.`Name`
FROM
	`Stone` `sG`
WHERE
	`sG`.`Enabled` = 1 AND `sG`.`Name` NOT LIKE 'level - %' ESCAPE '~' AND
	Char_Length(`sG`.`ImageFullUrl`) > 0
GROUP BY
	`sG`.`Name`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Stone`

