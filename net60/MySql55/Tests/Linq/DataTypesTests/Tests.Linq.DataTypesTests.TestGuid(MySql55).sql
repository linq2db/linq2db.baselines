﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `GuidTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `GuidTable`
(
	`Id`             INT      NOT NULL,
	`Column`         CHAR(36) NOT NULL,
	`ColumnNullable` CHAR(36)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Column Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = @Column AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`r`.`Id`,
	`r`.`Column`,
	`r`.`ColumnNullable`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	`r`.`ColumnNullable` = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL

INSERT INTO `GuidTable`
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
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Column Guid
SET     @Column = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

INSERT INTO `GuidTable`
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
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `GuidTable`
(
	`Id`,
	`Column`,
	`ColumnNullable`
)
VALUES
(1,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',NULL),
(2,'a948600d-de21-4f74-8ac2-9516b287076e','bd3973a5-4323-4dd8-9f4f-df9f93e2a627')

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Column`,
	`t1`.`ColumnNullable`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `GuidTable`

