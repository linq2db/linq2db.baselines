-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Column Bool -- Boolean
SET     @Column = 0
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`BooleanTable` `r`
WHERE
	`r`.`Column` = 0 AND `r`.`ColumnNullable` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`BooleanTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Bool -- Boolean
SET     @Column = 1
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = NULL

INSERT INTO `BooleanTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Bool -- Boolean
SET     @Column = 0
DECLARE @ColumnNullable Bool -- Boolean
SET     @ColumnNullable = 1

INSERT INTO `BooleanTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`BooleanTable`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `BooleanTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,0,1)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`BooleanTable`

INSERT BULK `BooleanTable`(Id, Column, ColumnNullable)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`BooleanTable` `t1`
ORDER BY
	`t1`.`Id`

