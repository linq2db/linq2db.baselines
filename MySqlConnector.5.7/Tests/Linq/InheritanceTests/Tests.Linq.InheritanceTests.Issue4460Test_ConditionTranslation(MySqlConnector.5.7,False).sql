BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Base`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Base`
(
	`Code`   VARCHAR(4000)     NULL,
	`Id`     INT           NOT NULL,
	`Name`   VARCHAR(4000)     NULL,
	`IsMale` BOOLEAN           NULL,
	`Age`    INT               NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale Bool -- Boolean
SET     @IsMale = 0

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`,
	`IsMale`
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Code VarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO `Base`
(
	`Code`,
	`Id`,
	`Name`,
	`Age`
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `e`.`Code` = 'Child2' THEN 1
		ELSE 0
	END,
	`e`.`Code`,
	`e`.`Id`,
	`e`.`Name`,
	`e`.`Age`,
	CASE
		WHEN `e`.`Code` = 'Child' THEN 1
		ELSE 0
	END,
	`e`.`IsMale`,
	CASE
		WHEN `e`.`Code` = 'BaseChild' THEN 1
		ELSE 0
	END
FROM
	`Base` `e`
WHERE
	CASE
		WHEN `e`.`Code` = 'BaseChild' OR `e`.`Code` = 'Child' OR `e`.`Code` = 'Child2'
			THEN CASE
			WHEN `e`.`Id` <> 0 THEN 1
			ELSE 0
		END
		WHEN `e`.`Id` <> 0 THEN 1
		ELSE 0
	END = 1
ORDER BY
	`e`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Base`

