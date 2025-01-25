BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 0
DECLARE @Text VarChar -- String
SET     @Text = ''

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(1) -- String
SET     @Text = 'a'

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text VarChar(3) -- String
SET     @Text = ' m '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Text VarChar(1) -- String
SET     @Text = ' '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Text VarChar(2) -- String
SET     @Text = '  '

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Text VarChar -- String
SET     @Text = NULL

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	(`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue2816Table`

