-- MariaDB.10.MySqlConnector MariaDB
DELETE  
FROM
	`Issue4646Table`



-- MariaDB.10.MySqlConnector MariaDB
DECLARE @Value Int32
SET     @Value = NULL
DECLARE @ValueN Int32
SET     @ValueN = NULL

INSERT INTO `Issue4646Table`
(
	`Value`,
	`ValueN`
)
VALUES
(
	@Value,
	@ValueN
)



-- MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`ValueN`
FROM
	`Issue4646Table` `t1`
LIMIT 2



