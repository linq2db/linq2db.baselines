BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1855Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue1855Table`
(
	`Id`                         INT       NOT NULL,
	`SomeDateTimeOffset`         TIMESTAMP NOT NULL,
	`SomeNullableDateTimeOffset` TIMESTAMP     NULL,

	CONSTRAINT `PK_Issue1855Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'
DECLARE @SomeNullableDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = '2019-08-08T08:08:08.0000000+00:00'

INSERT INTO `Issue1855Table`
(
	`Id`,
	`SomeDateTimeOffset`,
	`SomeNullableDateTimeOffset`
)
VALUES
(
	@Id,
	@SomeDateTimeOffset,
	@SomeNullableDateTimeOffset
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1
DECLARE @clientSideIn Datetime -- DateTimeOffset
SET     @clientSideIn = '2019-08-08T08:08:18.0000000+00:00'

SELECT
	`r`.`Id`,
	`r`.`SomeDateTimeOffset`,
	`r`.`SomeNullableDateTimeOffset`
FROM
	`Issue1855Table` `r`
WHERE
	`r`.`Id` = @id AND @clientSideIn <> `r`.`SomeDateTimeOffset`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue1855Table`

