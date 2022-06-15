﻿BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `aa`
(
	`bb` INT           NOT NULL,
	`cc` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`cc`,
	`t1`.`bb`
FROM
	`aa` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `aa`

