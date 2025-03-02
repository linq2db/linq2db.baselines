﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE `aa`
(
	`bb` INT          NOT NULL,
	`cc` VARCHAR(255)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`bb`,
	`t1`.`cc`
FROM
	`aa` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE `aa`

