BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Src`
(
	`Id`     INT          NOT NULL,
	`A`      INT              NULL,
	`B`      INT              NULL,
	`EnumA`  CHAR             NULL,
	`EnumB`  CHAR             NULL,
	`CEnumA` VARCHAR(255)     NULL,
	`CEnumB` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 100
DECLARE @A Int32
SET     @A = NULL
DECLARE @B Int32
SET     @B = NULL
DECLARE @EnumA String -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB String -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar -- AnsiString
SET     @CEnumB = NULL

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 101
DECLARE @A Int32
SET     @A = NULL
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA String -- StringFixedLength
SET     @EnumA = NULL
DECLARE @EnumB String(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar -- AnsiString
SET     @CEnumA = NULL
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 110
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = NULL
DECLARE @EnumA String(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB String -- StringFixedLength
SET     @EnumB = NULL
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar -- AnsiString
SET     @CEnumB = NULL

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 111
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA String(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB String(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 112
DECLARE @A Int32
SET     @A = 1
DECLARE @B Int32
SET     @B = 2
DECLARE @EnumA String(1) -- StringFixedLength
SET     @EnumA = 'A'
DECLARE @EnumB String(1) -- StringFixedLength
SET     @EnumB = 'B'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___One___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___Two___'

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 121
DECLARE @A Int32
SET     @A = 2
DECLARE @B Int32
SET     @B = 1
DECLARE @EnumA String(1) -- StringFixedLength
SET     @EnumA = 'B'
DECLARE @EnumB String(1) -- StringFixedLength
SET     @EnumB = 'A'
DECLARE @CEnumA VarChar(9) -- AnsiString
SET     @CEnumA = '___Two___'
DECLARE @CEnumB VarChar(9) -- AnsiString
SET     @CEnumB = '___One___'

INSERT INTO `Src`
(
	`Id`,
	`A`,
	`B`,
	`EnumA`,
	`EnumB`,
	`CEnumA`,
	`CEnumB`
)
VALUES
(
	@Id,
	@A,
	@B,
	@EnumA,
	@EnumB,
	@CEnumA,
	@CEnumB
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`x`.`Id`
FROM
	`Src` `x`
WHERE
	(`x`.`CEnumA` > `x`.`CEnumB` OR `x`.`CEnumA` IS NULL OR `x`.`CEnumB` IS NULL)
ORDER BY
	`x`.`Id`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Src`

