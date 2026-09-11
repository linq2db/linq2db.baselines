-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @MoneyValue NewDecimal(1, 0) -- Decimal
SET     @MoneyValue = 0

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1
DECLARE @MoneyValue NewDecimal(1, 0) -- Decimal
SET     @MoneyValue = 0

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 2
DECLARE @MoneyValue NewDecimal(1, 1) -- Decimal
SET     @MoneyValue = 0.5

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 2
DECLARE @MoneyValue NewDecimal(1, 1) -- Decimal
SET     @MoneyValue = 0.5

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 3
DECLARE @MoneyValue NewDecimal(2, 2) -- Decimal
SET     @MoneyValue = 0.05

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 3
DECLARE @MoneyValue NewDecimal(2, 2) -- Decimal
SET     @MoneyValue = 0.05

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 4
DECLARE @MoneyValue NewDecimal(4, 4) -- Decimal
SET     @MoneyValue = 0.0005

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 4
DECLARE @MoneyValue NewDecimal(4, 4) -- Decimal
SET     @MoneyValue = 0.0005

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 5
DECLARE @MoneyValue NewDecimal(2, 1) -- Decimal
SET     @MoneyValue = 1.5

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 5
DECLARE @MoneyValue NewDecimal(2, 1) -- Decimal
SET     @MoneyValue = 1.5

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 6
DECLARE @MoneyValue NewDecimal(3, 2) -- Decimal
SET     @MoneyValue = 1.05

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 6
DECLARE @MoneyValue NewDecimal(3, 2) -- Decimal
SET     @MoneyValue = 1.05

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 7
DECLARE @MoneyValue NewDecimal(5, 4) -- Decimal
SET     @MoneyValue = 1.0005

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 7
DECLARE @MoneyValue NewDecimal(5, 4) -- Decimal
SET     @MoneyValue = 1.0005

INSERT INTO `TableWithMoney`
(
	`ID`,
	`MoneyValue`
)
VALUES
(
	@ID,
	@MoneyValue
)
ON DUPLICATE KEY UPDATE
	`MoneyValue` = @MoneyValue

