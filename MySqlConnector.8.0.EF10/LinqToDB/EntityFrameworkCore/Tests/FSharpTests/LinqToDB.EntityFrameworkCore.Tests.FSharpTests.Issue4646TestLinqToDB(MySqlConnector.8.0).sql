-- MySql.8.0.MySqlConnector MySql80
DELETE  
FROM
	`Issue4646Table`



-- MySql.8.0.MySqlConnector MySql80
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



-- MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`ValueN`
FROM
	`Issue4646Table` `t1`
LIMIT 2



