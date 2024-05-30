BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ConcurrencyFiltered`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `ConcurrencyFiltered`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyFiltered` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyFiltered` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ConcurrencyFiltered`

