﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Column UByte -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = 255 AND `r`.`ColumnNullable` = 2

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`ByteTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column UByte -- Byte
SET     @Column = 1
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = NULL

INSERT INTO `ByteTable`
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
DECLARE @Column UByte -- Byte
SET     @Column = 255
DECLARE @ColumnNullable UByte -- Byte
SET     @ColumnNullable = 2

INSERT INTO `ByteTable`
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
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`ByteTable`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `ByteTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,1,NULL),
(2,255,2)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`ByteTable`

BeforeExecute
INSERT BULK `ByteTable`(Id, Column, ColumnNullable

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

