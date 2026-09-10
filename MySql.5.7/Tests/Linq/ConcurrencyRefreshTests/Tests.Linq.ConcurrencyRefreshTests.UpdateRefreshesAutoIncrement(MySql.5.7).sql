-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyRefreshAutoInc`
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5

UPDATE
	`ConcurrencyRefreshAutoInc` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1

SELECT
	`obj`.`Stamp`
FROM
	`ConcurrencyRefreshAutoInc` `obj`
WHERE
	`obj`.`Id` = @Id
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyRefreshAutoInc` `t1`
LIMIT 2

