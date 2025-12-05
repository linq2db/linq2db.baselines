-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `aa`
(
	`bb` INT           NOT NULL,
	`cc` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_aa` PRIMARY KEY CLUSTERED (`bb`)
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`bb`,
	`t1`.`cc`
FROM
	`aa` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `aa`

