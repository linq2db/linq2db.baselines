﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Table1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Table1`
(
	`Field1` INT  AUTO_INCREMENT NOT NULL,
	`Foeld2` CHAR                    NULL,

	CONSTRAINT `PK_Table1` PRIMARY KEY CLUSTERED (`Field1`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`current_1`.`Field1`,
	`previous`.`Field1`
FROM
	`Table1` `current_1`,
	`Table1` `previous`
WHERE
	`current_1`.`Foeld2` = `previous`.`Foeld2` OR `current_1`.`Foeld2` IS NULL AND `previous`.`Foeld2` IS NULL

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Table1`

