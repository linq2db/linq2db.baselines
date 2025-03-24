-- MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 0
DECLARE @BlogType VarChar(9) -- String
SET     @BlogType = 'blog_base'
DECLARE @Url VarChar(7) -- String
SET     @Url = 'BlogUrl'

INSERT INTO `Blogs`
(
	`Id`,
	`BlogType`,
	`Url`
)
VALUES
(
	@Id,
	@BlogType,
	@Url
)



-- MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 0
DECLARE @BlogType VarChar(8) -- String
SET     @BlogType = 'blog_rss'
DECLARE @Url VarChar(6) -- String
SET     @Url = 'RssUrl'

INSERT INTO `Blogs`
(
	`Id`,
	`BlogType`,
	`Url`
)
VALUES
(
	@Id,
	@BlogType,
	@Url
)



SELECT `b`.`Id`, `b`.`BlogType`, `b`.`Url`
FROM `Blogs` AS `b`


