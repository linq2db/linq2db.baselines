-- MariaDB.10.MySqlConnector MariaDB
DECLARE @BlogType VarChar(9) -- String
SET     @BlogType = 'blog_base'
DECLARE @Url VarChar(7) -- String
SET     @Url = 'BlogUrl'

INSERT INTO `Blogs`
(
	`BlogType`,
	`Url`
)
VALUES
(
	@BlogType,
	@Url
)



-- MariaDB.10.MySqlConnector MariaDB
DECLARE @BlogType VarChar(8) -- String
SET     @BlogType = 'blog_rss'
DECLARE @Url VarChar(6) -- String
SET     @Url = 'RssUrl'

INSERT INTO `Blogs`
(
	`BlogType`,
	`Url`
)
VALUES
(
	@BlogType,
	@Url
)



SELECT `b`.`Id`, `b`.`BlogType`, `b`.`Url`
FROM `Blogs` AS `b`


