-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildA'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO `InheritInsertParent`
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
DECLARE @Type VarChar(23) -- String
SET     @Type = 'InheritanceInsertChildB'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO `InheritInsertParent`
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
	`InheritInsertParent` `t1`

