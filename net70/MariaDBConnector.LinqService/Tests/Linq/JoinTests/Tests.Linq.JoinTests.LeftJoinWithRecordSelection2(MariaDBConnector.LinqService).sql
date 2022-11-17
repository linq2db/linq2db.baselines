﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT           NOT NULL,
	`FactId` INT           NOT NULL,
	`Name`   VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql

SELECT
	`fact_1`.`Id`,
	`tag_1`.`Id`,
	`tag_1`.`FactId`,
	`tag_1`.`Name`
FROM
	`Fact` `fact_1`
		LEFT JOIN `Tag` `tag_1` ON `tag_1`.`FactId` = `fact_1`.`Id`
WHERE
	`fact_1`.`Id` > 3
ORDER BY
	`fact_1`.`Id`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Fact`

