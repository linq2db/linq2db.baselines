-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', '+00:00')
DECLARE @SomeNullableDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', '+00:00')

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', '+00:00')

INSERT INTO `Issue1855Table`
(
	`Id`,
	`SomeDateTimeOffset`
)
VALUES
(
	@Id,
	@SomeDateTimeOffset
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @interval Int32
SET     @interval = 10
DECLARE @clientSideIn Datetime -- DateTimeOffset
SET     @clientSideIn = CONVERT_TZ('2019-08-08 08:08:18.000000', '+00:00', '+00:00')

SELECT
	`r`.`Id`,
	`r`.`SomeDateTimeOffset`,
	`r`.`SomeNullableDateTimeOffset`
FROM
	`Issue1855Table` `r`
WHERE
	Date_Add(`r`.`SomeNullableDateTimeOffset`, Interval @interval Second) >= @clientSideIn

