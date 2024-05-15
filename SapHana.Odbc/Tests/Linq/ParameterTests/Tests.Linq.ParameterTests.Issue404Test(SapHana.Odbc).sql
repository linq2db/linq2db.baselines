BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404One"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404Two"
(
	"Id"           Integer NOT NULL,
	"Usage"        Integer NOT NULL,
	"FirstTableId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Usage  -- Int32
SET     @Usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Usage  -- Int32
SET     @Usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404One"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table404Two"
(
	"Id"           Integer NOT NULL,
	"Usage"        Integer NOT NULL,
	"FirstTableId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Usage  -- Int32
SET     @Usage = 0
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Usage  -- Int32
SET     @Usage = 1
DECLARE @FirstTableId  -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Usage  -- Int32
SET     @Usage = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Usage  -- Int32
SET     @Usage = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404Two"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table404One"

