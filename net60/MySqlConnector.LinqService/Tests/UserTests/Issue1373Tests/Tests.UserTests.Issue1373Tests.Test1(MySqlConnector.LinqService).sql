﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1373Tests`
(
	`Id`     INT           NOT NULL,
	`Field1` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue1373Tests` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	@Id,
	@Field1
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Field1`
FROM
	`Issue1373Tests` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1373Tests`

