BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableWithData`
(
	`Id`       INT         NOT NULL,
	`Value`    INT         NOT NULL,
	`ValueStr` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = -1
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str1'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Int32
SET     @Value = -2
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str2'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value Int32
SET     @Value = -3
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str3'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value Int32
SET     @Value = -4
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str4'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value Int32
SET     @Value = -5
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str5'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Value Int32
SET     @Value = -6
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str6'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 7
DECLARE @Value Int32
SET     @Value = -7
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str7'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 8
DECLARE @Value Int32
SET     @Value = -8
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str8'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 9
DECLARE @Value Int32
SET     @Value = -9
DECLARE @ValueStr VarChar(4) -- String
SET     @ValueStr = 'Str9'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Value Int32
SET     @Value = -10
DECLARE @ValueStr VarChar(5) -- String
SET     @ValueStr = 'Str10'

INSERT INTO `TableWithData`
(
	`Id`,
	`Value`,
	`ValueStr`
)
VALUES
(
	@Id,
	@Value,
	@ValueStr
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`s`.`Id`,
	`s`.`Value`,
	`s`.`ValueStr`
FROM
	`TableWithData` `s`
WHERE
	`s`.`Id` = 3

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @param Int32
SET     @param = 200

DELETE  
FROM
	`TableWithData`
WHERE
	`TableWithData`.`Id` = 3
RETURNING
	`TableWithData`.`Id` + @param,
	`TableWithData`.`Value` + @param,
	Concat(`TableWithData`.`ValueStr`, @param)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithData`

