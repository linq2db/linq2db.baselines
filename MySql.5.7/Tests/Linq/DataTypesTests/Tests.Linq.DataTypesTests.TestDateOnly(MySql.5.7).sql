BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Column Datetime -- DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = '2020-02-29' AND `r`.`ColumnNullable` = '2200-01-01'

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Datetime -- DateTime
SET     @Column = '1950-01-01'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = NULL

INSERT INTO `DateOnlyTable`
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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Datetime -- DateTime
SET     @Column = '2020-02-29'
DECLARE @ColumnNullable Datetime -- DateTime
SET     @ColumnNullable = '2200-01-01'

INSERT INTO `DateOnlyTable`
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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `DateOnlyTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `DateOnlyTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'1950-01-01',NULL),
(2,'2020-02-29','2200-01-01')

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

