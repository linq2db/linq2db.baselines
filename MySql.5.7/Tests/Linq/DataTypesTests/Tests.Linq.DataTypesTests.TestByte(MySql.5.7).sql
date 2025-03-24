﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`ByteTable` `r`
WHERE
	`r`.`Column` = 255 AND `r`.`ColumnNullable` = 2

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`ByteTable`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`ByteTable`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`ByteTable`

BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`ByteTable` `t1`
ORDER BY
	`t1`.`Id`

