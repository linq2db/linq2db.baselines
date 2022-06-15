﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Fact`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Fact`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Fact` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Tag`
(
	`Id`     INT           NOT NULL,
	`FactId` INT           NOT NULL,
	`Name`   VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Tag` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Tag`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Fact`

