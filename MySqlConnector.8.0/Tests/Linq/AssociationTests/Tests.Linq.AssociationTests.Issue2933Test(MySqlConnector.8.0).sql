BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Car`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue2933Car`
(
	`PersonId` INT     NULL,
	`Id`       INT NOT NULL,

	CONSTRAINT `PK_Issue2933Car` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue2933Car`
(
	`PersonId`,
	`Id`
)
VALUES
(1,1),
(NULL,2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Person`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue2933Person`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_Issue2933Person` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue2933Person`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Pet`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue2933Pet`
(
	`Name`     VARCHAR(4000) NOT NULL,
	`Id`       INT           NOT NULL,
	`PersonId` INT           NOT NULL,

	CONSTRAINT `PK_Issue2933Pet` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Issue2933Pet`
(
	`Name`,
	`Id`,
	`PersonId`
)
VALUES
('Snuffles',1,1),
('Buddy',2,1)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
		LEFT JOIN `Issue2933Person` `a_Person` ON `x`.`PersonId` = `a_Person`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Pet`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Person`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue2933Car`

