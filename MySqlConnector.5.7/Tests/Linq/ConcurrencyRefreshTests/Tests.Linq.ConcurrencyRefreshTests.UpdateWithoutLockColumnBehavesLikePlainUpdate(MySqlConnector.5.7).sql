-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	`r`.`Stamp`,
	`r`.`Value`
FROM
	`ConcurrencyRefreshNoLock` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

