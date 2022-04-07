BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `GuidTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `GuidTable`
(
	`ColumnNullable` CHAR(36)     NULL,
	`Column`         CHAR(36) NOT NULL,
	`Id`             INT      NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `GuidTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',1),
('bd3973a5-4323-4dd8-9f4f-df9f93e2a627','a948600d-de21-4f74-8ac2-9516b287076e',2)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Column_1 Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = @Column_1 AND `r`.`ColumnNullable` = @ColumnNullable

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`r`.`ColumnNullable`,
	`r`.`Column`,
	`r`.`Id`
FROM
	`GuidTable` `r`
WHERE
	`r`.`Column` = 'a948600d-de21-4f74-8ac2-9516b287076e' AND
	`r`.`ColumnNullable` = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL
DECLARE @Column_1 Guid
SET     @Column_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `GuidTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
DECLARE @Column_1 Guid
SET     @Column_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `GuidTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(
	@ColumnNullable,
	@Column_1,
	@Id
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `GuidTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',1),
('bd3973a5-4323-4dd8-9f4f-df9f93e2a627','a948600d-de21-4f74-8ac2-9516b287076e',2)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE   `t1`
FROM
	`GuidTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `GuidTable`
(
	`ColumnNullable`,
	`Column`,
	`Id`
)
VALUES
(NULL,'bc7b663d-0fde-4327-8f92-5d8cc3a11d11',1),
('bd3973a5-4323-4dd8-9f4f-df9f93e2a627','a948600d-de21-4f74-8ac2-9516b287076e',2)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ColumnNullable`,
	`t1`.`Column`,
	`t1`.`Id`
FROM
	`GuidTable` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `GuidTable`

