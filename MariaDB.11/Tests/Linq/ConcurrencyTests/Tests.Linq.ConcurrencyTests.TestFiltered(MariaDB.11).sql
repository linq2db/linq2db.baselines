BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO `ConcurrencyFiltered`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyFiltered` `r`
SET
	`r`.`Stamp` = `r`.`Stamp` + 1,
	`r`.`Value` = @Value
WHERE
	`r`.`Id` = 2 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyFiltered` `r`
SET
	`r`.`Stamp` = `r`.`Stamp` + 1,
	`r`.`Value` = @Value
WHERE
	`r`.`Id` = 1 AND `r`.`Id` = @Id AND `r`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE  
FROM
	`ConcurrencyFiltered`
WHERE
	`ConcurrencyFiltered`.`Id` = 2 AND `ConcurrencyFiltered`.`Id` = @Id AND
	`ConcurrencyFiltered`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE  
FROM
	`ConcurrencyFiltered`
WHERE
	`ConcurrencyFiltered`.`Id` = 1 AND `ConcurrencyFiltered`.`Id` = @Id AND
	`ConcurrencyFiltered`.`Stamp` = @Stamp

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

