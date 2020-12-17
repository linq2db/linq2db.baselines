BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1189Customer`
(
	`ID`   INT          NOT NULL,
	`NAME` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue1189Customer` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @DateTime DateTime
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	`k_1`.`ID`,
	`k_1`.`NAME`,
	@DateTime
FROM
	`Issue1189Customer` `k_1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Issue1189Customer`

