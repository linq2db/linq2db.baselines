BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `aa`
(
	`bb` INT           NOT NULL,
	`cc` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Int32
SET     @bb = 99

INSERT INTO `aa`
(
	`cc`,
	`bb`
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`cc`,
	`t1`.`bb`
FROM
	`aa` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE `aa`

