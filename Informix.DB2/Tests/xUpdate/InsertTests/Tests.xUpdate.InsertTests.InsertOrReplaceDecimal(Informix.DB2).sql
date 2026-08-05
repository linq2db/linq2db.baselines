-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.5

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.5
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.05

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.05
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.0005

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 0.0005
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.5

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.5
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 6
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.05

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.05
DECLARE @ID Integer(4) -- Int32
SET     @ID = 6

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 7
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.0005

INSERT INTO TableWithMoney
(
	ID,
	MoneyValue
)
VALUES
(
	@ID,
	@MoneyValue
)

-- Informix.DB2 Informix
DECLARE @MoneyValue Decimal(16)
SET     @MoneyValue = 1.0005
DECLARE @ID Integer(4) -- Int32
SET     @ID = 7

UPDATE
	TableWithMoney t1
SET
	MoneyValue = @MoneyValue
WHERE
	t1.ID = @ID

