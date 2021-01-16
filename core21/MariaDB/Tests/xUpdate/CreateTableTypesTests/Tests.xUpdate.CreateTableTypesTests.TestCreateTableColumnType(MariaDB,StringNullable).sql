BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`String` VARCHAR(255)     NULL,
	`Id`     INT          NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = NULL

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
DECLARE @String VarChar(23) -- String
SET     @String = 'test max value nullable'

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

