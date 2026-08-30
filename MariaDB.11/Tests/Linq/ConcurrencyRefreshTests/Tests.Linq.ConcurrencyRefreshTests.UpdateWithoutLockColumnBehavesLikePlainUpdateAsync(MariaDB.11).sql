-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyRefreshNoLock`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	`ConcurrencyRefreshNoLock` `obj`
SET
	`obj`.`Stamp` = @Stamp,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Stamp`,
	`r`.`Value`
FROM
	`ConcurrencyRefreshNoLock` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

