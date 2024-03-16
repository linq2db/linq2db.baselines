BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Fd Int32
SET     @Fd = 2
DECLARE @Fd_1 Int32
SET     @Fd_1 = 2

/* My Test */
INSERT INTO `TestTable`
(
	`Id`,
	`Fd`
)
VALUES
(
	@Id,
	@Fd
)
ON DUPLICATE KEY UPDATE
	`Fd` = @Fd_1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

