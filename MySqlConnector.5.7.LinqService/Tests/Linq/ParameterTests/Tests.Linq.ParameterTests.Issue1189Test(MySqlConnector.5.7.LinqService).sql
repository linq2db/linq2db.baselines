BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1189Customer`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Issue1189Customer`
(
	`ID`   INT           NOT NULL,
	`NAME` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue1189Customer` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @DateTime Datetime -- DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	`k_1`.`ID`,
	`k_1`.`NAME`,
	@DateTime
FROM
	`Issue1189Customer` `k_1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Issue1189Customer`

