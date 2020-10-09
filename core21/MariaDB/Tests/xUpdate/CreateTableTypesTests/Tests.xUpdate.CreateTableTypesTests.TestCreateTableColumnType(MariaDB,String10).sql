BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`String` VARCHAR(10) NOT NULL,
	`Id`     INT         NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = ''

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`String`
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @String VarChar(7) -- String
SET     @String = 'test 10'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`String`
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t1`.`Id`, 
	`t1`.`String`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateTableTypes`

