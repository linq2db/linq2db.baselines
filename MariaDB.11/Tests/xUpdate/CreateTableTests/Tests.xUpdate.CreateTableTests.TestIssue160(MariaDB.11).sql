BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TABLE `aa`
(
	`bb` INT           NOT NULL,
	`cc` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @bb Int32
SET     @bb = 99
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO `aa`
(
	`bb`,
	`cc`
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`bb`,
	`t1`.`cc`
FROM
	`aa` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TABLE `aa`

