-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', 'UTC')
DECLARE @SomeNullableDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeNullableDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', 'UTC')

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @SomeDateTimeOffset Datetime -- DateTimeOffset
SET     @SomeDateTimeOffset = CONVERT_TZ('2019-08-08 08:08:08.000000', '+00:00', 'UTC')

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

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @clientSideIn Datetime -- DateTimeOffset
SET     @clientSideIn = CONVERT_TZ('2019-08-08 08:08:18.000000', '+00:00', 'UTC')

SELECT
	`r`.`Id`,
	`r`.`SomeDateTimeOffset`,
	`r`.`SomeNullableDateTimeOffset`
FROM
	`Issue1855Table` `r`
WHERE
	@clientSideIn <> `r`.`SomeNullableDateTimeOffset` OR
	`r`.`SomeNullableDateTimeOffset` IS NULL

