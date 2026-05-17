-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Column Int32
SET     @Column = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`IntEnumTable` `r`
WHERE
	`r`.`Column` = 2 AND `r`.`ColumnNullable` = 3

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`IntEnumTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Int32
SET     @Column = 1
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = NULL

INSERT INTO `IntEnumTable`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Int32
SET     @Column = 2
DECLARE @ColumnNullable Int32
SET     @ColumnNullable = 3

INSERT INTO `IntEnumTable`
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`IntEnumTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,2,3)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`IntEnumTable`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `IntEnumTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,2,3)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`IntEnumTable` `t1`
ORDER BY
	`t1`.`Id`

