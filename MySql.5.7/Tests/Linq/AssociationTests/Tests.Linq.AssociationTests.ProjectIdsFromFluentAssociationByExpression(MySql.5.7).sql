-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Title VarChar(5) -- String
SET     @Title = 'title'
DECLARE @Text VarChar(4) -- String
SET     @Text = 'text'

INSERT INTO `ForumTopic`
(
	`Id`,
	`Title`,
	`Text`
)
VALUES
(
	@Id,
	@Title,
	@Text
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Id`
FROM
	(
		SELECT
			`x`.`Id`
		FROM
			`ForumTopic` `x`
		WHERE
			`x`.`Id` = 6
		LIMIT 1
	) `m_1`
		INNER JOIN `ForumMessage` `d` ON `m_1`.`Id` = `d`.`TopicId`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`,
	`x`.`Title`,
	`x`.`Text`
FROM
	`ForumTopic` `x`
WHERE
	`x`.`Id` = 6
LIMIT 1

