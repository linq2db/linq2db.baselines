-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntValue Int32
SET     @IntValue = 42
DECLARE @StrValue VarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO `Issue4646Table`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @StrValue VarChar -- String
SET     @StrValue = NULL

INSERT INTO `Issue4646Table`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`Issue4646Table` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`Issue4646Table` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

