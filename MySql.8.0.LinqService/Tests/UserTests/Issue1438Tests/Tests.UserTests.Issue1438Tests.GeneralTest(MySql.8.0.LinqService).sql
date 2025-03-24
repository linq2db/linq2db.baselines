﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Has UByte -- Boolean
SET     @Has = 1

INSERT INTO `Issue1438`
(
	`Has`
)
VALUES
(
	@Has
)

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT LAST_INSERT_ID()

BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	`t1`.`Id`,
	`t1`.`Has`
FROM
	`Issue1438` `t1`
WHERE
	`t1`.`Id` = @id
LIMIT 2

