BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO `Names`
(
	`Id`,
	`Name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO `Addresses`
(
	`Id`,
	`Text`
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`Text`
FROM
	(
		SELECT DISTINCT
			`Item1`.`Id`
		FROM
			`Names` `Item1`
	) `m_1`
		INNER JOIN `Addresses` `d` ON `m_1`.`Id` = `d`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`tupledArg`.`Id`,
	`tupledArg`.`Name`
FROM
	`Names` `tupledArg`
ORDER BY
	`tupledArg`.`Id`

