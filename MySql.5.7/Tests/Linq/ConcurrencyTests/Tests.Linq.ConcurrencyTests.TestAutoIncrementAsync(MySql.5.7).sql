-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyAutoIncrement`
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

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyAutoIncrement` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE  
FROM
	`ConcurrencyAutoIncrement`
WHERE
	`ConcurrencyAutoIncrement`.`Id` = @Id AND `ConcurrencyAutoIncrement`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -8

DELETE  
FROM
	`ConcurrencyAutoIncrement`
WHERE
	`ConcurrencyAutoIncrement`.`Id` = @Id AND `ConcurrencyAutoIncrement`.`Stamp` = @Stamp

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyAutoIncrement` `t1`

