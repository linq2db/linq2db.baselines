BeforeExecute
-- MySql55 MySql

CREATE TABLE `aa`
(
	`bb` INT          NOT NULL,
	`cc` VARCHAR(255)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

BeforeExecute
-- MySql55 MySql
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
-- MySql55 MySql

SELECT
	`t1`.`cc`,
	`t1`.`bb`
FROM
	`aa` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE `aa`

