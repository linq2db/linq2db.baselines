-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Span Int64
SET     @Span = 54000000000

INSERT INTO `SeparatelyDeclaredRowA`
(
	`Id`,
	`Span`
)
VALUES
(
	@Id,
	@Span
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Span Int64
SET     @Span = 54000000000

INSERT INTO `SeparatelyDeclaredRowB`
(
	`Id`,
	`Span`
)
VALUES
(
	@Id,
	@Span
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`x`.`Id`
FROM
	`SeparatelyDeclaredRowA` `x`,
	`SeparatelyDeclaredRowB` `y`
WHERE
	`x`.`Span` = `y`.`Span`

