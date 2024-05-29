BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `t1`
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`testdata`.`Issue681Table`
WHERE
	`testdata`.`Issue681Table`.`ID` = @ID

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue681Table`

