BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO `Issue1373Tests`
(
	`Id`,
	`Field1`
)
VALUES
(
	1,
	@Field1
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
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
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`Field1`
FROM
	`Issue1373Tests` `t1`
ORDER BY
	`t1`.`Id`

