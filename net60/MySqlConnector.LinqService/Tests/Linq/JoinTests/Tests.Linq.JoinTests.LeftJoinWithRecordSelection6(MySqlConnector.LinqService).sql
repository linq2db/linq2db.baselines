﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 5

INSERT INTO `Fact`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT          NOT NULL,
	`FactId` INT          NOT NULL,
	`Name`   VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FactId Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FactId Int32
SET     @FactId = 3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag3'

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FactId Int32
SET     @FactId = 4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Tag4'

INSERT INTO `Tag`
(
	`Id`,
	`FactId`,
	`Name`
)
VALUES
(
	@Id,
	@FactId,
	@Name
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`ft`.`Id`,
	`t`.`Id`,
	`t`.`FactId`,
	`t`.`Name`
FROM
	`Fact` `ft`
		LEFT JOIN `Tag` `t` ON `t`.`FactId` = `ft`.`Id`
WHERE
	`ft`.`Id` > 3

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

