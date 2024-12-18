BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Car`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue2933Car`
(
	`PersonId` INT     NULL,
	`Id`       INT NOT NULL,

	CONSTRAINT `PK_Issue2933Car` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @PersonId Int32
SET     @PersonId = 1
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Issue2933Car`
(
	`PersonId`,
	`Id`
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @PersonId Int32
SET     @PersonId = NULL
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `Issue2933Car`
(
	`PersonId`,
	`Id`
)
VALUES
(
	@PersonId,
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Person`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue2933Person`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Issue2933Person` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `Issue2933Person`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Pet`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue2933Pet`
(
	`Name`     VARCHAR(4000) NOT NULL,
	`Id`       INT           NOT NULL,
	`PersonId` INT           NOT NULL,

	CONSTRAINT `PK_Issue2933Pet` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @PersonId Int32
SET     @PersonId = 1

INSERT INTO `Issue2933Pet`
(
	`Name`,
	`Id`,
	`PersonId`
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @PersonId Int32
SET     @PersonId = 1

INSERT INTO `Issue2933Pet`
(
	`Name`,
	`Id`,
	`PersonId`
)
VALUES
(
	@Name,
	@Id,
	@PersonId
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	(
		SELECT
			`a_PetIds`.`Name`
		FROM
			`Issue2933Pet` `a_PetIds`
		WHERE
			`a_Person`.`Id` = `a_PetIds`.`PersonId`
		LIMIT 1
	)
FROM
	`Issue2933Car` `x`
		LEFT JOIN `Issue2933Person` `a_Person` ON `x`.`PersonId` = `a_Person`.`Id` AND `x`.`PersonId` IS NOT NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Pet`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Person`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2933Car`

