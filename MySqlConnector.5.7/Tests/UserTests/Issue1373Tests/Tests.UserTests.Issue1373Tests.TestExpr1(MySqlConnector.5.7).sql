BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1373Tests`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1373Tests`
(
	`Id`     INT           NOT NULL,
	`Field1` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue1373Tests` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	2,
	@Field1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	3,
	@Field1
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Field1`
FROM
	`Issue1373Tests` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1373Tests`

