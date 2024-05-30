BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Parent564`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Parent564`
(
	`Id`          INT           AUTO_INCREMENT NOT NULL,
	`Type`        VARCHAR(4000)                    NULL,
	`StringValue` VARCHAR(20)                      NULL,
	`IntValue`    INT                              NULL,

	CONSTRAINT `PK_Parent564` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO `Parent564`
(
	`Type`,
	`StringValue`
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO `Parent564`
(
	`Type`,
	`IntValue`
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`Parent564` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Parent564`

