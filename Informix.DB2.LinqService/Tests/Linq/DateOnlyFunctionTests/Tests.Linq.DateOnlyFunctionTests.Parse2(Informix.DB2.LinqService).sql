BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Transactions

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Transactions
(
	TransactionId   Int                  NOT NULL,
	TransactionDate DATETIME YEAR TO DAY NOT NULL,

	PRIMARY KEY (TransactionId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-02-29', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2021-02-28', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2019-02-28', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-03-29', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-01-29', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-03-01', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-02-28', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-08-09', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2021-08-09', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2019-08-09', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-09-09', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-07-09', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-08-10', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @TransactionId Integer(4) -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date(16)
SET     @TransactionDate = TO_DATE('2020-08-08', '%Y-%m-%d')

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	d.TransactionDate
FROM
	Transactions d
WHERE
	Day(d.TransactionDate) > 0

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Transactions

