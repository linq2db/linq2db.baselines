BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereCases

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS WhereCases
(
	Id                Int     NOT NULL,
	BoolValue         BOOLEAN NOT NULL,
	NullableBoolValue BOOLEAN     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @NullableBoolValue SmallInt -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 't'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @NullableBoolValue SmallInt -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 't'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 't'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 't'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 11
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @NullableBoolValue SmallInt -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 12
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 'f'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 13
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @NullableBoolValue SmallInt -- Boolean
SET     @NullableBoolValue = NULL

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 14
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 'f'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 15
DECLARE @BoolValue Char(1) -- StringFixedLength
SET     @BoolValue = 'f'
DECLARE @NullableBoolValue Char(1) -- StringFixedLength
SET     @NullableBoolValue = 'f'

INSERT INTO WhereCases
(
	Id,
	BoolValue,
	NullableBoolValue
)
VALUES
(
	@Id,
	@BoolValue,
	@NullableBoolValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.BoolValue,
	t1.NullableBoolValue
FROM
	WhereCases t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = 't'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = 't'::BOOLEAN AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = 't'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = 't'::BOOLEAN AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = 'f'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = 'f'::BOOLEAN AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.BoolValue = 'f'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.BoolValue = 'f'::BOOLEAN AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	(t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT ((t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = 't'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = 't'::BOOLEAN AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue = 't'::BOOLEAN AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue = 't'::BOOLEAN AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NOT NULL AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	t.NullableBoolValue IS NULL AND t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (t.NullableBoolValue IS NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND (t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL) AND
	t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL) AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND (t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL)) AND
	t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND (t.NullableBoolValue = 'f'::BOOLEAN OR t.NullableBoolValue IS NULL)) AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT t.BoolValue AND t.NullableBoolValue = 'f'::BOOLEAN AND
	t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = 'f'::BOOLEAN AND t.NullableBoolValue IS NOT NULL AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT t.BoolValue AND t.NullableBoolValue = 'f'::BOOLEAN AND t.NullableBoolValue IS NOT NULL) AND
	t.Id > 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id,
	t.BoolValue,
	t.NullableBoolValue
FROM
	WhereCases t
WHERE
	NOT (NOT (NOT t.BoolValue AND t.NullableBoolValue = 'f'::BOOLEAN AND t.NullableBoolValue IS NOT NULL) AND t.Id > 0)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS WhereCases

