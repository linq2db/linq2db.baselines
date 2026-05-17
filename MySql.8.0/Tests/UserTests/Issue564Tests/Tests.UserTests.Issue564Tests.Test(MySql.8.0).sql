-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Parent564` `t1`

