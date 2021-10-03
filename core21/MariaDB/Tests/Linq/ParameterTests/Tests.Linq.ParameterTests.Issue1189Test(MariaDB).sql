BeforeExecute
-- MariaDB MySql

CREATE TABLE `Issue1189Customer`
(
	`ID`   INT          NOT NULL,
	`NAME` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue1189Customer` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql
DECLARE @DateTime Datetime -- DateTime2
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	`k_1`.`ID`,
	`k_1`.`NAME`,
	@DateTime
FROM
	`Issue1189Customer` `k_1`

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Issue1189Customer`

