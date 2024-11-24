BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Base`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Base`
(
	`Code` VARCHAR(4000)     NULL,
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL,
	`Age`  INT               NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Age`
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	CASE
		WHEN `e`.`Code` = 'Child2' THEN 1
		ELSE 0
	END,
	`e`.`Code`,
	`e`.`Id`,
	`e`.`Age`,
	CASE
		WHEN `e`.`Code` = 'Child' THEN 1
		ELSE 0
	END,
	`e`.`Name`
FROM
	`Base` `e`
WHERE
	`e`.`Code` <> 'Child' OR `e`.`Code` IS NULL

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Base`

