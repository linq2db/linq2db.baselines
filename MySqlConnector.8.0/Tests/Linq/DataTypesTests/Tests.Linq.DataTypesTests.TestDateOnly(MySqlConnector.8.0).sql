BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`DateOnlyTable` `r`
WHERE
	`r`.`Column` = '2020-02-29' AND `r`.`ColumnNullable` = '2200-01-01'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`DateOnlyTable`

BeforeExecute
INSERT BULK `DateOnlyTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`DateOnlyTable` `t1`
ORDER BY
	`t1`.`Id`

