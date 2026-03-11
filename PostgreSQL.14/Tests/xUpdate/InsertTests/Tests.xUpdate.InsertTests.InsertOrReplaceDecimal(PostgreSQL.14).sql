-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue Numeric(1, 0) -- Decimal
SET     @MoneyValue = 0

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @MoneyValue Numeric(1, 0) -- Decimal
SET     @MoneyValue = 0

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue Numeric(1, 1) -- Decimal
SET     @MoneyValue = 0.5

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @MoneyValue Numeric(1, 1) -- Decimal
SET     @MoneyValue = 0.5

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue Numeric(2, 2) -- Decimal
SET     @MoneyValue = 0.05

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @MoneyValue Numeric(2, 2) -- Decimal
SET     @MoneyValue = 0.05

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue Numeric(4, 4) -- Decimal
SET     @MoneyValue = 0.0005

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 4
DECLARE @MoneyValue Numeric(4, 4) -- Decimal
SET     @MoneyValue = 0.0005

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue Numeric(2, 1) -- Decimal
SET     @MoneyValue = 1.5

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @MoneyValue Numeric(2, 1) -- Decimal
SET     @MoneyValue = 1.5

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue Numeric(3, 2) -- Decimal
SET     @MoneyValue = 1.05

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 6
DECLARE @MoneyValue Numeric(3, 2) -- Decimal
SET     @MoneyValue = 1.05

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.0005

INSERT INTO "TableWithMoney"
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 7
DECLARE @MoneyValue Numeric(5, 4) -- Decimal
SET     @MoneyValue = 1.0005

INSERT INTO "TableWithMoney" AS t1
(
	"ID",
	"MoneyValue"
)
VALUES
(
	:ID,
	:MoneyValue
)
ON CONFLICT ("ID") DO UPDATE SET
	"MoneyValue" = :MoneyValue

