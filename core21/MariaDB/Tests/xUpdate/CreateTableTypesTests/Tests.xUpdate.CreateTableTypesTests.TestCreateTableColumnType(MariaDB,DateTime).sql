BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`       INT      NOT NULL,
	`DateTime` DATETIME NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTime DateTime
SET     @DateTime = '2000-01-01'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTime`
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTime DateTime
SET     @DateTime = '2018-11-24 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTime`
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

