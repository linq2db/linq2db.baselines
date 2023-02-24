﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Table404One
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO Table404One
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int NOT NULL,
	"Usage"      Int NOT NULL,
	FirstTableId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v."Usage" = @Usage_1 AND v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v."Usage" = @Usage_1 AND v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404One

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table404One
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO Table404One
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

INSERT INTO Table404One
(
	Id
)
VALUES
(
	@Id
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Table404Two
(
	Id           Int NOT NULL,
	"Usage"      Int NOT NULL,
	FirstTableId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 1

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer(4) -- Int32
SET     @FirstTableId = 2

INSERT INTO Table404Two
(
	Id,
	"Usage",
	FirstTableId
)
VALUES
(
	@Id,
	@Usage_1,
	@FirstTableId
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 0

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v."Usage" = @Usage_1 AND v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage_1 Integer(4) -- Int32
SET     @Usage_1 = 1

SELECT
	key_data_result.Id,
	v.Id,
	v."Usage",
	v.FirstTableId
FROM
	(
		SELECT DISTINCT
			c_1.Id
		FROM
			Table404One c_1
	) key_data_result
		INNER JOIN Table404Two v ON v."Usage" = @Usage_1 AND v.FirstTableId = key_data_result.Id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id
FROM
	Table404One c_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404One

