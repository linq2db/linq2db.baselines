BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Table`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4620Table`
(
	`Id`         INT             NOT NULL,
	`IdContract` INT                 NULL,
	`IdClient`   INT                 NULL,
	`Sum`        DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IdContract Int32
SET     @IdContract = NULL
DECLARE @IdClient Int32
SET     @IdClient = 1
DECLARE @Sum NewDecimal(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO `Issue4620Table`
(
	`Id`,
	`IdContract`,
	`IdClient`,
	`Sum`
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IdContract Int32
SET     @IdContract = 2
DECLARE @IdClient Int32
SET     @IdClient = NULL
DECLARE @Sum NewDecimal(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO `Issue4620Table`
(
	`Id`,
	`IdContract`,
	`IdClient`,
	`Sum`
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @IdContract Int32
SET     @IdContract = NULL
DECLARE @IdClient Int32
SET     @IdClient = NULL
DECLARE @Sum NewDecimal(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO `Issue4620Table`
(
	`Id`,
	`IdContract`,
	`IdClient`,
	`Sum`
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @IdContract Int32
SET     @IdContract = 2
DECLARE @IdClient Int32
SET     @IdClient = 1
DECLARE @Sum NewDecimal(1, 0) -- Decimal
SET     @Sum = 0

INSERT INTO `Issue4620Table`
(
	`Id`,
	`IdContract`,
	`IdClient`,
	`Sum`
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Client`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4620Client`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 1'

INSERT INTO `Issue4620Client`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Client 2'

INSERT INTO `Issue4620Client`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Contract`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue4620Contract`
(
	`Id`       INT NOT NULL,
	`IdClient` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IdClient Int32
SET     @IdClient = 1

INSERT INTO `Issue4620Contract`
(
	`Id`,
	`IdClient`
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IdClient Int32
SET     @IdClient = 2

INSERT INTO `Issue4620Contract`
(
	`Id`,
	`IdClient`
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	(
		SELECT
			`b`.`Id`,
			`a_Client`.`Name`
		FROM
			`Issue4620Table` `b`
				INNER JOIN `Issue4620Client` `a_Client` ON `b`.`IdClient` = `a_Client`.`Id` AND `b`.`IdClient` IS NOT NULL
		WHERE
			`b`.`IdClient` IS NOT NULL
		UNION ALL
		SELECT
			`b_1`.`Id`,
			`a_Client_1`.`Name`
		FROM
			`Issue4620Table` `b_1`
				INNER JOIN `Issue4620Contract` `a_Contract` ON `b_1`.`IdContract` = `a_Contract`.`Id` AND `b_1`.`IdContract` IS NOT NULL
				INNER JOIN `Issue4620Client` `a_Client_1` ON `a_Contract`.`IdClient` = `a_Client_1`.`Id`
		WHERE
			`b_1`.`IdContract` IS NOT NULL
	) `t1`
ORDER BY
	`t1`.`Id`,
	`t1`.`Name`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Contract`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Client`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue4620Table`

