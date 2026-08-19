-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`Stamp`,
	`r`.`Value`
FROM
	`ConcurrencyRefreshNoLock` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

