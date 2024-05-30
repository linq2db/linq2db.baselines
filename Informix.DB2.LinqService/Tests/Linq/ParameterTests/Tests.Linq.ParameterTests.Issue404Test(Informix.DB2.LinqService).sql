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
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = @Usage

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = @Usage

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

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
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1
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
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 0

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = @Usage

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Usage Integer(4) -- Int32
SET     @Usage = 1

SELECT
	m_1.Id,
	d.Id,
	d."Usage",
	d.FirstTableId
FROM
	(
		SELECT DISTINCT
			t1.Id
		FROM
			Table404One t1
	) m_1
		INNER JOIN Table404Two d ON m_1.Id = d.FirstTableId
WHERE
	d."Usage" = @Usage

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id
FROM
	Table404One t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404Two

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Table404One

