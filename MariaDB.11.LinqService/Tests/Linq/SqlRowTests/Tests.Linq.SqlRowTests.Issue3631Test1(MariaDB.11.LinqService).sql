BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3631Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue3631Table`
(
	`Country` VARCHAR(2) NOT NULL,
	`State`   VARCHAR(2) NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AL'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'AZ'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'CA'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'FL'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'IN'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'OH'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarChar(2) -- String
SET     @State = 'NY'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'AB'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Country VarChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarChar(2) -- String
SET     @State = 'ON'

INSERT INTO `Issue3631Table`
(
	`Country`,
	`State`
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`Country`,
	`x`.`State`
FROM
	`Issue3631Table` `x`
WHERE
	(`x`.`Country`, `x`.`State`) IN (('US', 'CA'), ('US', 'NY'))

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3631Table`

